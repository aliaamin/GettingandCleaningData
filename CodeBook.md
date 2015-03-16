
## Variables Information

| Variable        | Description           | Value          |
| -------------|:-------------|:-------------|
| subject      | ID of all the subjects whose data were collected from. | from 1 to 30           |
| activity     | activity name      | laying, sitting, standing, walking, walking_downstairs, walking_upstairs          |
| domainSignal | time domain signals or frequency domain signals      | time, frequency          |
| instrument     | measuring instrument       | accelerometer, gyroscope          |
| accelerationSignal     | body or gravity acceleration signals      | body, gravity          |
| stats     | type of statistics data: mean (mean) or standard deviation (std)      | mean, std          |
| jerk     | jerk signal derived from body linear acceleration and angular velocity | jerk, NA          |
| magnitude     | magnitude of the three-dimensional signals     | magnitude, NA          |
| axis     |  axis      | x, y or z          |
| sum     | count data points      | integer value          |
| average     | average of all observations      | numeric value          |


Information about the variables (including units!) in the data set not contained in the tidy data
Information about the summary choices you made
Information about the experimental study design you used

## Summary of steps taken
		# step0: load raw data 
        # step1: Merges the training and the test sets to create one data set.
        # step2: Extracts only the measurements on the mean and standard deviation for each measurement. 
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


