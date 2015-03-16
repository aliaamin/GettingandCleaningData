
library(data.table)
library(dplyr)

runA <- function() {
 
        # You should create one R script called run_analysis.R that does the following. 
        # step1: Merges the training and the test sets to create one data set.
        # step2: Extracts only the measurements on the mean and standard deviation for each measurement. 
        # step3: Uses descriptive activity names to name the activities in the data set
        # step4: Appropriately labels the data set with descriptive variable names. 
        # step5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

        # step 0: load data
                f1 <- paste(getwd(),"UCI HAR Dataset/features.txt", sep ="/")        
                d_feature = read.table(f1, sep=" ")

                f2 <- paste(getwd(),"UCI HAR Dataset/train/y_train.txt", sep ="/")        
                d_ytrain = read.table(f2, sep=" ")

                f3 <- paste(getwd(),"UCI HAR Dataset/train/subject_train.txt", sep ="/")        
                d_subjecttrain = read.table(f3, sep=" ")
        
                f4 <- paste(getwd(),"UCI HAR Dataset/train/X_train.txt", sep ="/")        
                d_xtrain = read.table(f4, as.is= TRUE)
                
                f5 <- paste(getwd(),"UCI HAR Dataset/activity_labels.txt", sep ="/")        
                d_activitylabel = read.table(f5, sep=" ")

                f6 <- paste(getwd(),"UCI HAR Dataset/test/X_test.txt", sep ="/")        
                d_xtest = read.table(f6, as.is= TRUE)

                f7 <- paste(getwd(),"UCI HAR Dataset/test/y_test.txt", sep ="/")                
                d_ytest = read.table(f7, sep=" ")

                f8 <- paste(getwd(),"UCI HAR Dataset/test/subject_test.txt", sep ="/")        
                d_subjecttest = read.table(f8, sep=" ")



        # print(nrow(d_feature)) #561, 2
#        print(nrow(d_activitylabel)) # 6, 2

#        print(ncol(d_subjecttrain)) #7352, 1
#        print(ncol(d_ytrain)) # 7352, 1
#        print(ncol(d_xtrain)) # 7352, 561

#        print(nrow(d_subjecttest)) # 2947 ,1
#        print(ncol(d_ytest)) # 2947,1
#        print(nrow(d_xtest)) #  2947, 561

   



        # Step 0.2 prepare train dataset
        # combine subject (subject_train.txt) with activity type (y_train.txt) complete the label of each activity type with the correct label (activity_labels.txt)

        combidata <- cbind(d_subjecttrain, d_ytrain)
        setnames(d_activitylabel, c("activity_type", "activity") )
        setnames(combidata, c("subject","activity_type") )

        combidata <- merge(combidata, d_activitylabel, all = TRUE )
        combidata <- combidata[,c("subject", "activity")] # remove the column "activity_type" as this is redundant with "activity"

        # Step 0.3 prepare test dataset

        combidata2 <- cbind(d_subjecttest, d_ytest)
        setnames(combidata2, c("subject","activity_type") )

        combidata2 <- merge(combidata2, d_activitylabel, all = TRUE )
        combidata2 <- combidata2[,c("subject", "activity")] # remove the column "activity_type" as this is redundant with "activity"



        # step1: Merges the training and the test sets to create one data set.
        # step 1a. label all columns of all sensors correctly for test and train dataset       
        for (i in 1:nrow(d_feature))
        {
                colnames(d_xtrain)[i] <- as.character(d_feature[i,2])
                colnames(d_xtest)[i] <- as.character(d_feature[i,2])  
        }

        #step 1b. merge training data and test data
        mergeSubjectActivityData <- rbind(combidata, combidata2) 
        mergeMeasurementData <- rbind(d_xtrain,d_xtest)
        totalData <- cbind(mergeSubjectActivityData,mergeMeasurementData)

        # step2: Extracts only the measurements on the mean and standard deviation for each measurement. 
        # find which measurement columns are the means and standard deviations
        requiredColumnsList <- c(grep("std[()]",d_feature[[2]], ignore.case = TRUE),grep("mean[()]",d_feature[[2]], ignore.case = TRUE))
        requiredColumnsList <- sort(requiredColumnsList)

        # step 2.1 combine subject, activity, and mean and standard deviation measurements for all data 
        mergeMeasurementData <- mergeMeasurementData[,requiredColumnsList]
        totalData <- cbind(mergeSubjectActivityData,mergeMeasurementData)
        totalData <- arrange(totalData, subject) 

        # step3: Uses descriptive activity names to name the activities in the data set
        #       this has been done in  Step 0.2 and Step 0.3 above, where the activities names are used in the column: "activity"


        # step4: Appropriately labels the data set with descriptive variable names. 
        for (i in 3:ncol(totalData))
        {
                collabel <- names(totalData)[i]
                collabel <- sub("^t", "time_", collabel)
                collabel <- sub("^f", "frequency_", collabel)
                collabel <- sub("Body", "body_", collabel)
                collabel <- sub("Gravity", "gravity_", collabel)
                collabel <- sub("Acc", "accelerometer_", collabel)
                collabel <- sub("Gyro", "gyroscope_", collabel)
                collabel <- sub("Mag", "magnitude_", collabel)
                collabel <- sub("Jerk", "jerk_", collabel)
                collabel <- sub("\\-mean\\(\\)", "mean", collabel)
                collabel <- sub("\\-std\\(\\)", "std", collabel)
                collabel <- sub("-X", "_X-axis", collabel)
                collabel <- sub("-Y", "_Y-axis", collabel)
                collabel <- sub("-Z", "_Z-axis", collabel)
                colnames(totalData)[i] <- collabel

                
        }
        # step5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
        maingroup <- group_by(totalData, subject, activity)  
        x<- summarise_each(maingroup, funs(mean))  

        fi <- file.path(getwd(), "run_analysis_result.txt")
        write.table(x, fi, quote = FALSE, sep = "\t", row.names = FALSE)

        return(x)       
}