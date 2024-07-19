'''
Script for helping to get feature vector of noise, only apply for this scenario:
1. With default switch threshold, there are many switch events which is wrongly recognized.
2. When increase switch threshold, the number of switching positions is enormly decreased, correct switch events are easy to be recognized.
For other scenario, please use manual identification 
'''
import argparse
import numpy as np


def main():
    parser = argparse.ArgumentParser(
        description=('Command line tool to get the noise feature from a features file and the '
                     'corresponding switch_positions file')
    )
    
    parser.add_argument('-f',
                        '--feature-file',
                        help='Path to the feature csv-file',
                        required=True)
    parser.add_argument('-s',
                        '--switch-positions',
                        help='Path to the switch positions csv-file',
                        required=True)
    parser.add_argument('-c',
                        '--correct-switch-positions',
                        help='Path to the switch positions csv-file with correct switch events',
                        required=True)                        
    parser.add_argument('-o',
                        '--output-folder',
                        help='Path to the output folder',
                        required=True)
    parser.add_argument('--prefix',
                        help='Prefix for the output files',
                        default='corrected')

    args = parser.parse_args()    
    
    # Load feature file
    features = np.loadtxt(fname=args.feature_file, delimiter=',')
    # Load correct switch position file
    correct_switch_positions = np.loadtxt(fname=args.correct_switch_positions, delimiter=',')
    # Load switch position file
    switch_positions = np.loadtxt(fname=args.switch_positions, delimiter=',')
    
    # Get the number of switch events
    corr_switch_number = np.count_nonzero(correct_switch_positions)
    switch_number = np.count_nonzero(switch_positions)
    print("The appliance has been switching",corr_switch_number, "times")
    print("Detected",switch_number,"switch events,", switch_number-corr_switch_number, "are noise")
    
    # Remove correct switch event
    removed_index = list()
    switch_frames = np.nonzero(switch_positions)[0]
    corr_switch_frames = np.nonzero(correct_switch_positions)[0]
    for frame in corr_switch_frames:
        for i in np.arange(max(0, frame-5),min(len(switch_positions), frame+6)):
            if switch_positions[i] == 1:
                print("Remove correct switch events with index", i)
                position=np.where(switch_frames==i)[0][0]
                print("The No.",position, "element")
                removed_index.append(position)
    switch_features = features[removed_index, :]
    noise_features = np.delete(features, removed_index, axis=0)
    
    switch_feature_file_name = f'{args.output_folder}/{args.prefix}_switch_features.csv'
    print('Write switch features in',switch_feature_file_name)
    np.savetxt(fname=switch_feature_file_name,
               X=switch_features,
               delimiter=',')    
    
    noise_feature_file_name = f'{args.output_folder}/{args.prefix}_noise_features.csv'
    print('Write noise features in',noise_feature_file_name)
    np.savetxt(fname=noise_feature_file_name,
               X=noise_features,
               delimiter=',')                          
                  
if __name__ == '__main__':
    main()    
