'''
 Script to make training data from raw data
'''
import argparse
import sys

import numpy as np
import matplotlib.pyplot as plt

sys.path.append("../../../")
from src.pulsed_power_ml.model_framework.data_io import load_binary_data_array
from src.pulsed_power_ml.model_framework.training_data_labelling import get_features_from_raw_data
from src.pulsed_power_ml.model_framework.training_data_labelling import get_max_spectrum
from src.pulsed_power_ml.model_framework.data_io import read_parameters

try:
    matplotlib_config_file = "/home/thomas/dark_theme.mplstyle"
    plt.style.use(matplotlib_config_file)
except OSError:
    print(f"INFO: matplotlib config file '{matplotlib_config_file}' not found. ")
    print("INFO: Using std. config.")

def main():

    parser = argparse.ArgumentParser(description='CLI tool to produce training files from raw data')
    parser.add_argument('--input',
                        '-i',
                        help='Path to the input binary containing the raw data.',
                        required=True)
    parser.add_argument('--output-folder',
                        '-o',
                        help='Path to the output folder',
                        required=True)
    parser.add_argument('--parameter-file',
                        '-p',
                        help='Path to the parameter file',
                        required=True)
    parser.add_argument('--prefix',
                        help='Prefix for the output files',
                        default='')
    parser.add_argument("--switch-detection-threshold",
                        help=("Threshold to be used by the switch detection algorithm"
                              "If not set, use threshold in parameter file"),
                        type=float,
                        default=-np.inf)
    args = parser.parse_args()

    # Read parameter file
    parameter_dict = read_parameters(args.parameter_file)

    # Set switch detection threshold
    if np.isinf(args.switch_detection_threshold):
        switch_detection_threshold = float(parameter_dict['switch_threshold'])
    else:
        switch_detection_threshold = args.switch_detection_threshold

    # Load data points
    data_point_array = load_binary_data_array(args.input,
                                              fft_size_data_point=parameter_dict['fft_size_real'])

    max_spec_array = get_max_spectrum(data_point_array, parameter_dict)
    # Produce features
    features_array, switch_positions, switch_value_array, NaN_array = get_features_from_raw_data(
        data_point_array,
        parameter_dict,
        switch_detection_threshold=switch_detection_threshold
    )

    # write features to file
    output_file_name = f'{args.output_folder}/{args.prefix}_features.csv'
    np.savetxt(fname=output_file_name,
               X=features_array,
               delimiter=',')

    switch_positions_output_file_name = f'{args.output_folder}/{args.prefix}_switch_positions.csv'
    np.savetxt(fname=switch_positions_output_file_name,
               X=switch_positions,
               delimiter=',')

    # Produce plots
    fig = plt.figure(figsize=(16, 18), tight_layout=True)
    
    # Plot apparent power and switch positions
    ax = fig.add_subplot(3, 1, 1)
    # Plot apparent power
    apparent_power_array = data_point_array[:, -2]
    ax.plot(apparent_power_array,
            label='Apparent Power')
    # Plot switch position
    ax.plot(switch_positions * max(apparent_power_array),
            label='Detected Switching Events',
            alpha=0.5)
    ax.set_xlabel('Time [a.u.]')
    ax.set_ylabel('[VA]')
    ax.grid(True)
    ax.legend()
    ax.set_title(f'Apparent Power & Switch Positions for {args.prefix}')
    # Plot switch position (feature vector has NaN element)
    if NaN_array.size != 0:
        ax.vlines(NaN_array, ymin=0, ymax=0.5 * max(apparent_power_array), color='red')
    
    # Plot maximal value of spectrum
    ax_max_spec = fig.add_subplot(3, 1, 2)
    ax_max_spec.plot(max_spec_array,
            label='Max spectrum')
    ax_max_spec.set_xlabel('Time [a.u.]')
    ax_max_spec.set_ylabel('db')
    ax_max_spec.grid(True)
    ax_max_spec.legend()
    ax_max_spec.set_title(f'Max spectrum for {args.prefix}')
    
    # Plot switch value for switch detection    
    ax_switch_values = fig.add_subplot(3, 1, 3)
    ax_switch_values.plot(
        switch_value_array,
        label="Switch Values"
    )
    ax_switch_values.axhline(
        switch_detection_threshold,
        label="Current Switch Detection Threshold",
        color="C1"
    )
    ax_switch_values.axhline(
        -switch_detection_threshold,
        color="C1"
    )
    ax_switch_values.set_xlabel("Time [a.u.]")
    ax_switch_values.set_ylabel("Switch Value")
    ax_switch_values.set_title("Switch values per Frame")
    ax_switch_values.legend()
    ax_switch_values.grid(True)
    # Add numbers to switching events
    for i, s in enumerate(np.nonzero(switch_positions)[0]):
        y = -1.25 if i % 2 != 0 else -0.5
        ax.text(x=s,
                y=y,
                s=i)

    figure_output_file_name = f'{args.output_folder}/{args.prefix}_switch_positions.pdf'
    fig.savefig(figure_output_file_name)

    return


if __name__ == '__main__':
    main()
