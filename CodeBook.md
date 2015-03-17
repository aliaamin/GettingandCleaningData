
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


