"""
This module implements a functionality to create and train an instance of the Gupta
module.
"""

import argparse
import sys

import numpy as np
import tensorflow as tf

sys.path.append("../../../../")

from src.pulsed_power_ml.models.gupta_model.tf_gupta_clf import TFGuptaClassifier
from src.pulsed_power_ml.model_framework.data_io import read_parameters
from src.pulsed_power_ml.models.gupta_model.gupta_utils import read_power_data_base


def main():

    # Parse CLI arguments
    parser = argparse.ArgumentParser(
        description='This script provides an easy method to create, train and store an instance of the Gupta model.'
    )
    parser.add_argument("-f",
                        "--features",
                        help="Path to features (csv file)",
                        required=True)
    parser.add_argument("-l",
                        "--labels",
                        help="Path to labels (csv file)",
                        required=True)
    parser.add_argument("-o",
                        "--output",
                        help="Output path",
                        required=True)
    parser.add_argument("-p",
                        "--parameters",
                        help="Path to parameter file.",
                        required=True)
    parser.add_argument('-d',
                        '--power-data-base',
                        help='Path to data base containing apparent power for each known appliance.',
                        required=True)
    parser.add_argument('-v',
                        '--verbose',
                        help='Increase the verbosity of the model',
                        action='store_true',
                        default=False)
    parser.add_argument('-c',
                       '--phys-bound-cond',
                       type=float,
                       help="Allowed power range ratio (between 0 and 1)")
    args = parser.parse_args()

    # Load parameters
    print(f'\nRead parameters from {args.parameters}')
    parameter_dict = read_parameters(args.parameters)

    # Load data base for apparent power values
    print(f'\nRead apparent power values from {args.power_data_base}')
    _, apparent_power_list = list(zip(*read_power_data_base(args.power_data_base)))

    # Load features and labels
    print(f'\nLoad features from {args.features}')
    features = np.loadtxt(args.features, delimiter=',')
    print(f'\nLoad labels from {args.labels}')
    labels = np.loadtxt(args.labels, delimiter=',')

    # Check if enable physical boundary condition feature
    check_phy_condition = False
    power_threshold = 0.0    
    if args.phys_bound_cond is not None:
        if args.phys_bound_cond <= 0 or args.phys_bound_cond >= 1:
            print('\nWarning: Value for -c / --phys-bound-cond should be between 0 and 1')
        else:
            check_phy_condition = True
            power_threshold = args.phys_bound_cond
            print('\nModel with physical boundary condition')
            
    # Instantiate model
    gupta_model = TFGuptaClassifier(
        window_size=parameter_dict["window_size"],
        step_size=parameter_dict["step_size"],
        switch_threshold=parameter_dict["switch_threshold"],
        fft_size_real=parameter_dict["fft_size_real"],
        sample_rate=parameter_dict["sample_rate"],
        n_known_appliances=parameter_dict["n_known_appliances"],
        spectrum_type=parameter_dict["spectrum_type"],
        apparent_power_list=tf.constant(apparent_power_list, dtype=np.float32),
        n_neighbors=parameter_dict["n_neighbors"],
        distance_threshold=parameter_dict["distance_threshold"],
        training_data_features=tf.constant(features, dtype=np.float32),
        training_data_labels=tf.constant(labels, dtype=np.float32),
        verbose=tf.constant(args.verbose, dtype=tf.bool),
        check_phy_condition=tf.constant(check_phy_condition, dtype=tf.bool),
        apparent_power_threshold=tf.constant(power_threshold, dtype=tf.float32),
    )

    # Reset model
    reset_tensor = tf.ones(shape=(parameter_dict['fft_size_real'] * 3 + 4)) * -1
    _ = gupta_model(reset_tensor)

    # Store model
    print(f'\nStore model in {args.output}')
    tf.saved_model.save(gupta_model, args.output)

    print('\nAll done :-)')
    return


if __name__ == '__main__':
    main()
