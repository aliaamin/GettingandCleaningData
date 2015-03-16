

| Tables        | Are           | Cool  |
| ------------- |:-------------:| -----:|
| col 3 is      | right-aligned | $1600 |
| col 2 is      | centered      |   $12 |
| zebra stripes | are neat      |    $1 |


| Variable | Description |
| subject | ID of all the subjects whose data were collected from. The ID is from 1 to 30 |
| activity | activity name |
| domainSignal | Time (domain signal) or Frequency (domain signal) |
| instrument | Measuring instrument: accelerometer or gyroscope |
| accelerationSignal | Body or Gravity acceleration signal |
| stats | mean (mean) or standard deviation (std) |
| jerk | jerk signal yes or no |
| magnitude | magnitude |
| axis | x, y or z axis |
| count | count data points |
| average | average of all observations |

Information about the variables (including units!) in the data set not contained in the tidy data
Information about the summary choices you made
Information about the experimental study design you used


## Raw data
Source: 
A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

- activity_labels.txt; containing columns: activity_id and activity_name (dimension = 6 x 2 )
- features.txt; containing list of feature_number and features_name (dimension = 561 x 2) 
- subject_train.txt in train folder; containing list of subjects (1:30) in the train category (dimension = 7352 x 1) 
- X_train.txt; containing observation of measurements for each features (dimension = 11228 x 662)
- y_train.txt; containing activities (1:6) of each subject in the training category (dimension = 7352 x 1)
- subject_test.txt in test folder; containing list of subjects (1:30) in the test category (dimension = 2947 x 1) 
- X_test.txt in test folder; containing observation of measurements for each features (dimension = 4312 x 667)
- y_test.txt in test folder; containing activities (1:6) of each subject in the test category (dimension = 2947 x 1)


