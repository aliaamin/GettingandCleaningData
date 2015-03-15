


Information about the variables (including units!) in the data set not contained in the tidy data
Information about the summary choices you made
Information about the experimental study design you used


Raw data is:
--------------------------------
- activity_labels.txt; containing columns: activity_id and activity_name (dimension = 6 x 2 )
- features.txt; containing list of feature_number and features_name (dimension = 561 x 2) 
- subject_train.txt in train folder; containing list of subjects (1:30) in the train category (dimension = 7352 x 1) 
- X_train.txt; containing observation of measurements for each features (dimension = 11228 x 662)
- y_train.txt; containing activities (1:6) of each subject in the training category (dimension = 7352 x 1)
- subject_test.txt in test folder; containing list of subjects (1:30) in the test category (dimension = 2947 x 1) 
- X_test.txt in test folder; containing observation of measurements for each features (dimension = 4312 x 667)
- y_test.txt in test folder; containing activities (1:6) of each subject in the test category (dimension = 2947 x 1)


Step 1. work with train dataset
combine subject (subject_train.txt) with activity type (y_train.txt) complete the label of each activity type with the correct label (activity_labels.txt)
