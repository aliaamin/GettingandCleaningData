
library(data.table)
library(dplyr)

runA <- function() {
 
        # You should create one R script called run_analysis.R that does the following. 
        # step1: Merges the training and the test sets to create one data set.
        # step2: Extracts only the measurements on the mean and standard deviation for each measurement. 
        # step3: Uses descriptive activity names to name the activities in the data set
        # step4: Appropriately labels the data set with descriptive variable names. 
        # step5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

        # step 0.1 load data
                f1 <- paste(getwd(),"UCI HAR Dataset/features.txt", sep ="/")        
                d_feature = read.table(f1, sep=" ")

                f2 <- paste(getwd(),"UCI HAR Dataset/train/y_train.txt", sep ="/")        
                d_ytrain = read.table(f2, sep=" ")

                f3 <- paste(getwd(),"UCI HAR Dataset/train/subject_train.txt", sep ="/")        
                d_subjecttrain = read.table(f3, sep=" ")
        
                f4 <- paste(getwd(),"UCI HAR Dataset/train/X_train.txt", sep ="/")        
                d_xtrain = read.table(f4, as.is= TRUE)

                f5 <- paste(getwd(),"UCI HAR Dataset/activity_labels.txt", sep ="/")        
                d_activitylabel = read.table(f5, sep=" ", na.strings = "NA", fill = TRUE)

                f6 <- paste(getwd(),"UCI HAR Dataset/test/X_test.txt", sep ="/")        
                d_xtest = read.table(f6, as.is= TRUE)

                f7 <- paste(getwd(),"UCI HAR Dataset/test/y_test.txt", sep ="/")                
                d_ytest = read.table(f7, sep=" ", na.strings = "NA", fill = TRUE)

                f8 <- paste(getwd(),"UCI HAR Dataset/test/subject_test.txt", sep ="/")        
                d_subjecttest = read.table(f8, sep=" ", na.strings = "NA", fill = TRUE)
                
                
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



        # label all columns of all sensors correctly for test and train dataset       
        for (i in 1:nrow(d_feature))
        {
                colnames(d_xtrain)[i] <- as.character(d_feature[i,2])
                colnames(d_xtest)[i] <- as.character(d_feature[i,2])  
        }

        # subset only columns that contains mean (mean) and standard deviation (std)
        requiredColumnsList <- c(grep("std[()]",d_feature[[2]], ignore.case = TRUE),grep("mean[()]",d_feature[[2]], ignore.case = TRUE))
        requiredColumnsList <- sort(requiredColumnsList)

#        step 0.4 combine subject, activity, and measurement for all train data 
        d_xtrain <- d_xtrain[,requiredColumnsList]
        combidata <- cbind(combidata, d_xtrain) 

#        step 0.5 combine subject, activity, and measurement for all test data 
        d_xtest <- d_xtest[,requiredColumnsList]
        combidata2 <- cbind(combidata2, d_xtest) 

#        step 1: combine complete train data with test data
        combidata <- rbind(combidata,combidata2)
        combidata <- arrange(combidata, subject) 

        # step2: Extracts only the measurements on the mean and standard deviation for each measurement. 
        # step3: Uses descriptive activity names to name the activities in the data set
        # step4: Appropriately labels the data set with descriptive variable names. 

        # step5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
#        secondcombidata <- group_by(combidata, subject, activity)
#        x <- summarize(secondcombidata, mean=mean(value))

#        combidata %>% 
        maingroup <- group_by(combidata, subject, activity)  
        x<- summarise_each(maingroup, funs(mean))  



        return(x)       
}