##Course Project: Getting and Cleaning Data
Alia Amin, https://github.com/aliaamin/GettingandCleaningData

The purpose of this document is to explain the work done under this folder.

### Assignment description
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

 You should create one R script called run_analysis.R that does the following. 
Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement. 
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names. 
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Good luck!

### Steps to reproduce this project
1. Download the datasets from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip, save in working directory
2. Run the script: run_analysis.R using RStudio
The script carries out the following steps:

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



3. Open the output file: run_analysis_result.txt saved in working directory

### Output 
1. A tidy dataset called run_analysis_result.txt
2. Cookbook file (cookbook.md)





