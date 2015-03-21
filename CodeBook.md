
## Variables Information

| Variable        |  Value         |
|:-------------|:-------------|
| subject  |  ID of all the subjects from 1 to 30           |
| activity  | laying, sitting, standing, walking, walking_downstairs, walking_upstairs          |
| time_body_accelerometer_mean_X-axis     | numeric [-1,1] | 
| time_body_accelerometer_mean_Y-axis     | numeric [-1,1] | 
| time_body_accelerometer_mean_Z-axis     | numeric [-1,1] | 
| time_body_accelerometer_std_X-axis     | numeric [-1,1] | 
| time_body_accelerometer_std_Y-axis     | numeric [-1,1] | 
| time_body_accelerometer_std_Z-axis     | numeric [-1,1] | 
| time_gravity_accelerometer_mean_X-axis     | numeric [-1,1] | 
| time_gravity_accelerometer_mean_Y-axis     | numeric [-1,1] | 
| time_gravity_accelerometer_mean_Z-axis     | numeric [-1,1] | 
| time_gravity_accelerometer_std_X-axis     |  numeric [-1,1] | 
| time_gravity_accelerometer_std_Y-axis     | numeric [-1,1] | 
| time_gravity_accelerometer_std_Z-axis     | numeric [-1,1] | 
| time_body_accelerometer_jerk_mean_X-axis     | numeric [-1,1] | 
| time_body_accelerometer_jerk_mean_Y-axis     | numeric [-1,1] | 
| time_body_accelerometer_jerk_mean_Z-axis     | numeric [-1,1] | 
| time_body_accelerometer_jerk_std_X-axis     | numeric [-1,1] | 
| time_body_accelerometer_jerk_std_Y-axis     | numeric [-1,1] | 
| time_body_accelerometer_jerk_std_Z-axis     | numeric [-1,1] | 
| time_body_gyroscope_mean_X-axis     | numeric [-1,1] | 
| time_body_gyroscope_mean_Y-axis     | numeric [-1,1] | 
| time_body_gyroscope_mean_Z-axis     | numeric [-1,1] | 
| time_body_gyroscope_std_X-axis     | numeric [-1,1] | 
| time_body_gyroscope_std_Y-axis     | numeric [-1,1] | 
| time_body_gyroscope_std_Z-axis     | numeric [-1,1] | 
| time_body_gyroscope_jerk_mean_X-axis     | numeric [-1,1] | 
| time_body_gyroscope_jerk_mean_Y-axis     | numeric [-1,1] | 
| time_body_gyroscope_jerk_mean_Z-axis     | numeric [-1,1] | 
| time_body_gyroscope_jerk_std_X-axis     | numeric [-1,1] | 
| time_body_gyroscope_jerk_std_Y-axis     | numeric [-1,1] | 
| time_body_gyroscope_jerk_std_Z-axis     | numeric [-1,1] | 
| time_body_accelerometer_magnitude_mean     | numeric [-1,1] | 
| time_body_accelerometer_magnitude_std     | numeric [-1,1] | 
| time_gravity_accelerometer_magnitude_mean     | numeric [-1,1] | 
| time_gravity_accelerometer_magnitude_std     | numeric [-1,1] | 
| time_body_accelerometer_jerk_magnitude_mean     | numeric [-1,1] | 
| time_body_accelerometer_jerk_magnitude_std     | numeric [-1,1] | 
| time_body_gyroscope_magnitude_mean     | numeric [-1,1] | 
| time_body_gyroscope_magnitude_std     | numeric [-1,1] | 
| time_body_gyroscope_jerk_magnitude_mean     | numeric [-1,1] | 
| time_body_gyroscope_jerk_magnitude_std     | numeric [-1,1] | 
| frequency_body_accelerometer_mean_X-axis     | numeric [-1,1] | 
| frequency_body_accelerometer_mean_Y-axis     | numeric [-1,1] | 
| frequency_body_accelerometer_mean_Z-axis     | numeric [-1,1] | 
| frequency_body_accelerometer_std_X-axis     | numeric [-1,1] | 
| frequency_body_accelerometer_std_Y-axis     | numeric [-1,1] | 
| frequency_body_accelerometer_std_Z-axis     | numeric [-1,1] | 
| frequency_body_accelerometer_jerk_mean_X-axis     | numeric [-1,1] | 
| frequency_body_accelerometer_jerk_mean_Y-axis     | numeric [-1,1] | 
| frequency_body_accelerometer_jerk_mean_Z-axis     | numeric [-1,1] | 
| frequency_body_accelerometer_jerk_std_X-axis     | numeric [-1,1] | 
| frequency_body_accelerometer_jerk_std_Y-axis     | numeric [-1,1] | 
| frequency_body_accelerometer_jerk_std_Z-axis     | numeric [-1,1] | 
| frequency_body_gyroscope_mean_X-axis     | numeric [-1,1] | 
| frequency_body_gyroscope_mean_Y-axis     | numeric [-1,1] | 
| frequency_body_gyroscope_mean_Z-axis     | numeric [-1,1] | 
| frequency_body_gyroscope_std_X-axis     | numeric [-1,1] | 
| frequency_body_gyroscope_std_Y-axis     | numeric [-1,1] | 
| frequency_body_gyroscope_std_Z-axis     | numeric [-1,1] | 
| frequency_body_accelerometer_magnitude_mean     | numeric [-1,1] | 
| frequency_body_accelerometer_magnitude_std     | numeric [-1,1] | 
| frequency_body_body_accelerometer_jerk_magnitude_mean     | numeric [-1,1] | 
| frequency_body_body_accelerometer_jerk_magnitude_std     | numeric [-1,1] | 
| frequency_body_body_gyroscope_magnitude_mean     | numeric [-1,1] | 
| frequency_body_body_gyroscope_magnitude_std     | numeric [-1,1] | 
| frequency_body_body_gyroscope_jerk_magnitude_mean     | numeric [-1,1] | 
| frequency_body_body_gyroscope_jerk_magnitude_std     | numeric [-1,1] | 


| Variable        |  Value         | Example         |
|:-------------|:-------------|:-------------|

| $subject  |  int   |   1 1 1 1 1 1 1 1 1 1 ...           |
| $activity  |  Factor w/ 6 levels   |  "LAYING","SITTING",..: 4 4 4 4 4 4 4 4 4 4 ...           |
| $time_body_accelerometer_mean_X-axis  |  num   |   0.279 0.282 0.276 0.287 0.28 ...           |
| $time_body_accelerometer_mean_Y-axis  |  num    |  -0.0177 -0.0119 -0.018 -0.0375 -0.0184 ...           |



'data.frame':	10299 obs. of  68 variables:

| Variable        |  Note         |
|:-------------|:-------------|
| $subject  |  int  1 1 1 1 1 1 1 1 1 1 ...           |
| $activity  |  Factor w/ 6 levels "LAYING","SITTING",..: 4 4 4 4 4 4 4 4 4 4 ...           |
| $time_body_accelerometer_mean_X-axis  |  num  0.279 0.282 0.276 0.287 0.28 ...           |
| $time_body_accelerometer_mean_Y-axis  |  num  -0.0177 -0.0119 -0.018 -0.0375 -0.0184 ...           |
| $time_body_accelerometer_mean_Z-axis  |  num  -0.109 -0.103 -0.107 -0.146 -0.107 ...           |
| $time_body_accelerometer_std_X-axis  |  num  -0.998 -0.999 -0.999 -0.983 -0.996 ...           |
| $time_body_accelerometer_std_Y-axis  |  num  -0.987 -0.988 -0.994 -0.892 -0.994 ...           |
| $time_body_accelerometer_std_Z-axis  |  num  -0.991 -0.993 -0.994 -0.941 -0.992 ...           |
| $time_gravity_accelerometer_mean_X-axis  |  num  0.953 0.953 0.955 0.836 -0.209 ...           |
| $time_gravity_accelerometer_mean_Y-axis  |  num  -0.265 -0.265 -0.26 0.161 0.771 ...           |
| $time_gravity_accelerometer_mean_Z-axis   |  um  -0.0127 -0.01313 -0.00996 0.39982 0.59002 ...           |
| $time_gravity_accelerometer_std_X-axis  |  num  -0.998 -0.997 -0.999 -0.96 -0.998 ...           |
| $time_gravity_accelerometer_std_Y-axis  |  num  -0.992 -0.991 -0.997 -0.896 -0.996 ...           |
| $time_gravity_accelerometer_std_Z-axis  |  num  -0.993 -0.995 -0.998 -0.911 -0.997 ...           |
| $time_body_accelerometer_jerk_mean_X-axis  |  num  0.0786 0.0749 0.0735 0.0895 0.0735 ...           |
| $time_body_accelerometer_jerk_mean_Y-axis  |  num  0.0165 0.00995 0.01837 -0.03432 0.01082 ...           |
| $time_body_accelerometer_jerk_mean_Z-axis  |  num  -4.85e-05 6.88e-04 1.44e-03 3.06e-03 -1.96e-03 ...           |
| $time_body_accelerometer_jerk_std_X-axis  |  num  -0.997 -0.997 -0.997 -0.992 -0.995 ...           |
| $time_body_accelerometer_jerk_std_Y-axis  |  num  -0.986 -0.987 -0.989 -0.988 -0.992 ...           |
| $time_body_accelerometer_jerk_std_Z-axis  |  num  -0.993 -0.993 -0.991 -0.994 -0.993 ...           |
| $time_body_gyroscope_mean_X-axis  |  num  -0.0272 -0.025 -0.0305 -0.0484 -0.0289 ...           |
| $time_body_gyroscope_mean_Y-axis  |  num  -0.0692 -0.0716 -0.0747 -0.2392 -0.0727 ...           |
| $time_body_gyroscope_mean_Z-axis  |  num  0.0791 0.0809 0.0894 0.2471 0.0851 ...           |
| $time_body_gyroscope_std_X-axis  |  num  -0.998 -0.996 -0.994 -0.994 -0.999 ...           |
| $time_body_gyroscope_std_Y-axis  |  num  -0.998 -0.998 -0.997 -0.975 -0.994 ...           |
| $time_body_gyroscope_std_Z-axis  |  num  -0.996 -0.994 -0.997 -0.969 -0.995 ...           |
| $time_body_gyroscope_jerk_mean_X-axis  |  num  -0.0971 -0.097 -0.1023 -0.0942 -0.0979 ...           |
| $time_body_gyroscope_jerk_mean_Y-axis  |  num  -0.04 -0.041 -0.0401 -0.0224 -0.0387 ...           |
| $time_body_gyroscope_jerk_mean_Y-axis  |  num  -0.059 -0.056 -0.0527 -0.067 -0.0576 ...           |
| $time_body_gyroscope_jerk_std_X-axis  |  num  -0.998 -0.997 -0.995 -0.997 -0.999 ...           |
| $time_body_gyroscope_jerk_std_Y-axis  |  num  -0.998 -0.998 -0.998 -0.998 -0.998 ...           |
| $time_body_gyroscope_jerk_std_Z-axis  |  num  -0.996 -0.994 -0.995 -0.997 -0.997 ...           |
| $time_body_accelerometer_magnitude_mean  |  num  -0.995 -0.994 -0.999 -0.935 -0.997 ...           |
| $$time_body_accelerometer_magnitude_std  |  num  -0.997 -0.995 -0.998 -0.932 -0.995 ...           |
| $time_gravity_accelerometer_magnitude_mean  |  num  -0.995 -0.994 -0.999 -0.935 -0.997 ...           |
| $time_gravity_accelerometer_magnitude_std  |  num  -0.997 -0.995 -0.998 -0.932 -0.995 ...           |
| $time_body_accelerometer_jerk_magnitude_mean  |  num  -0.993 -0.993 -0.993 -0.993 -0.995 ...           |
| $time_body_accelerometer_jerk_magnitude_std  |  num  -0.994 -0.995 -0.995 -0.995 -0.995 ...           |
| $time_body_gyroscope_magnitude_mean  |  num  -0.997 -0.996 -0.996 -0.895 -0.996 ...           |
| $time_body_gyroscope_magnitude_std  |  num  -0.998 -0.997 -0.996 -0.953 -0.998 ...           |
| $time_body_gyroscope_jerk_magnitude_mean  |  num  -0.998 -0.997 -0.997 -0.998 -0.999 ...           |
| $time_body_gyroscope_jerk_magnitude_std  |  num  -0.999 -0.999 -0.998 -0.999 -0.999 ...           |
| $frequency_body_accelerometer_mean_X-axis  |  num  -0.998 -0.999 -0.999 -0.986 -0.996 ...           |
| $frequency_body_accelerometer_mean_Y-axis  |  num  -0.985 -0.987 -0.99 -0.932 -0.993 ...           |
| $frequency_body_accelerometer_mean_Z-axis  |  num  -0.99 -0.993 -0.993 -0.98 -0.992 ...           |
| $frequency_body_accelerometer_std_X-axis  |  num  -0.999 -0.998 -0.999 -0.981 -0.997 ...           |
| $frequency_body_accelerometer_std_Y-axis  |  num  -0.988 -0.989 -0.995 -0.88 -0.994 ...           |
| $frequency_body_accelerometer_std_Z-axis  |  num  -0.991 -0.993 -0.995 -0.929 -0.991 ...           |
| $frequency_body_accelerometer_jerk_mean_X-axis  |  num  -0.997 -0.997 -0.997 -0.993 -0.995 ...           |
| $frequency_body_accelerometer_jerk_mean_Y-axis  |  num  -0.986 -0.986 -0.989 -0.989 -0.992 ...           |
| $frequency_body_accelerometer_jerk_mean_Z-axis  |  num  -0.99 -0.991 -0.989 -0.992 -0.992 ...           |
| $frequency_body_accelerometer_jerk_std_X-axis  |  num  -0.997 -0.997 -0.996 -0.993 -0.995 ...           |
| $frequency_body_accelerometer_jerk_std_Y-axis  |  num  -0.986 -0.989 -0.99 -0.988 -0.991 ...           |
| $frequency_body_accelerometer_jerk_std_Z-axis  |  num  -0.994 -0.993 -0.992 -0.995 -0.993 ...           |
| $frequency_body_gyroscope_mean_X-axis  |  num  -0.998 -0.995 -0.992 -0.994 -0.999 ...           |
| $frequency_body_gyroscope_mean_Y-axis  |  num  -0.998 -0.998 -0.997 -0.98 -0.996 ...           |
| $frequency_body_gyroscope_mean_Z-axis  |  num  -0.994 -0.993 -0.995 -0.978 -0.995 ...           |
| $frequency_body_gyroscope_std_X-axis  |  num  -0.999 -0.997 -0.995 -0.994 -0.999 ...           |
| $frequency_body_gyroscope_std_Y-axis  |  num  -0.998 -0.998 -0.998 -0.973 -0.993 ...           |
| $frequency_body_gyroscope_std_Z-axis  |  num  -0.997 -0.995 -0.998 -0.969 -0.995 ...           |
| $frequency_body_accelerometer_magnitude_mean  |  num  -0.995 -0.994 -0.996 -0.954 -0.994 ...           |
| $frequency_body_accelerometer_magnitude_std  |  num  -0.998 -0.995 -0.999 -0.931 -0.995 ...           |
| $frequency_body_body_accelerometer_jerk_magnitude_mean  |  num  -0.994 -0.994 -0.993 -0.995 -0.994 ...           |
| $frequency_body_body_accelerometer_jerk_magnitude_std  |  um  -0.993 -0.995 -0.996 -0.993 -0.994 ...           |
| $frequency_body_body_gyroscope_magnitude_mean  |  num  -0.998 -0.997 -0.997 -0.97 -0.998 ...           |
| $frequency_body_body_gyroscope_magnitude_std  |  num  -0.998 -0.998 -0.996 -0.951 -0.998 ...           |
| $frequency_body_body_gyroscope_jerk_magnitude_mean  |  num  -0.999 -0.999 -0.998 -0.999 -0.999 ...           |
| $frequency_body_body_gyroscope_jerk_magnitude_std  |  num  -0.999 -0.999 -0.999 -0.999 -0.998 ...           |

## Summary of steps taken

        # step 0: load data
		    ## Step 0.2 prepare train dataset: combine subject (subject_train.txt) with activity type (y_train.txt) complete the label of each activity type with the correct label (activity_labels.txt)
			## Step 0.3 prepare test dataset
        # step1: Merges the training and the test sets to create one data set.
		        ## step 1a. label all columns of all sensors correctly for test and train dataset
				## step 1b. merge training data and test data				
        # step2: Extracts only the measurements on the mean and standard deviation for each measurement.
				## find columns containing mean and standard deviation
				## combine subject, activity, and mean and standard deviation measurements for all data 
        # step3: Uses descriptive activity names to name the activities in the data set
        # step4: Appropriately labels the data set with descriptive variable names. 
        # step5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Raw data: Experimental study design used
Source: 
A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

		# activity_labels.txt; containing columns: activity_id and activity_name (dimension = 6 x 2 )
		# features.txt; containing list of feature_number and features_name (dimension = 561 x 2) 
		# subject_train.txt in train folder; containing list of subjects (1:30) in the train category (dimension = 7352 x 1) 
		# X_train.txt; containing observation of measurements for each features (dimension = 7352 x 561)
		# y_train.txt; containing activities (1:6) of each subject in the training category (dimension = 7352 x 1)
		# subject_test.txt in test folder; containing list of subjects (1:30) in the test category (dimension = 2947 x 1) 
		# X_test.txt in test folder; containing observation of measurements for each features (dimension = 2947 x 561)
		# y_test.txt in test folder; containing activities (1:6) of each subject in the test category (dimension = 2947 x 1)


