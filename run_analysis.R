## Check if the directory exists

if (!file.exists("Week-4-Course-Project-Dataset")) {
    dir.create("Week-4-Course-Project-Dataset")
}

## Download the dataset

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./Week-4-Course-Project-Dataset/projectdataset.zip")

## Unzip the dataset

unzip(zipfile = "./Week-4-Course-Project-Dataset/projectdataset.zip", 
      exdir = "./Week-4-Course-Project-Dataset")


## 1. Merge the training and the test dataset to create one dataset

    ## 1.1 Load the data into R

        ## 1.1.1 Load in the training dataset

           x_train <- read.table("./Week-4-Course-Project-Dataset/UCI HAR Dataset/train/X_train.txt")
           y_train <- read.table("./Week-4-Course-Project-Dataset/UCI HAR Dataset/train/y_train.txt")
           subject_train <- read.table("./Week-4-Course-Project-Dataset/UCI HAR Dataset/train/subject_train.txt")

        ## 1.1.2 Load in the testing dataset
           
           x_test <- read.table("./Week-4-Course-Project-Dataset/UCI HAR Dataset/test/X_test.txt")
           y_test <- read.table("./Week-4-Course-Project-Dataset/UCI HAR Dataset/test/y_test.txt")
           subject_test <- read.table("./Week-4-Course-Project-Dataset/UCI HAR Dataset/test/subject_test.txt")
           
        ## 1.1.3 Load in the feature 
           
           features <- read.table("./Week-4-Course-Project-Dataset/UCI HAR Dataset/features.txt")
           
        ## 1.1.4 Load in the activity labels
           
           activity_labels <- read.table("./Week-4-Course-Project-Dataset/UCI HAR Dataset/activity_labels.txt")
           
    ## 1.2 Assign variable names
           
           colnames(x_train) <- features[, 2]
           colnames(y_train) <- "activity ID"
           colnames(subject_train) <- "subject ID"
           
           colnames(x_test) <- features[, 2]
           colnames(y_test) <- "activity ID"
           colnames(subject_test) <- "subject ID"
           
           colnames(activity_labels) <- c("activity ID", "activity Type")
           
    ## 1.3 Merge the dataset together
           
           train <- cbind(subject_train, y_train, x_train)
           test <- cbind(subject_test, y_test, x_test)
           combined <- rbind(train, test)
           

## 2. Extract only the measurements on the mean and standard deviation for each measurement. 
           
           mean_sd <- combined[, grepl("subject|activity|mean|std", names(combined))]
           mean_sd
           
           
## 3. Use descriptive activity names to name the activities in the data set
           
           ## Replace activity ID with activity Type
           
           library(dplyr)
           
           mean_sd$`activity ID` <- factor(mean_sd$`activity ID`,
                                           levels = activity_labels[, 1],
                                           labels = activity_labels[, 2])
           mean_sd
           
           
## 4. Appropriately labels the data set with descriptive variable names
           
    ## 4.1 Get the column names 
           
           mean_sd_col <- colnames(mean_sd)
           mean_sd_col
        
    ## 4.2 Expand abbreviations and clean up names
           
           mean_sd_col <- gsub("^f", "frequencyDomain ", mean_sd_col)
           mean_sd_col <- gsub("^t", "timeDomain", mean_sd_col)
           mean_sd_col <- gsub("Acc", "Accelerometer", mean_sd_col)
           mean_sd_col <- gsub("Gyro", "Gyroscope", mean_sd_col)
           mean_sd_col <- gsub("Mag", "Magnitude", mean_sd_col)
           mean_sd_col <- gsub("mean", "Mean", mean_sd_col)
           mean_sd_col <- gsub("std", "StandardDeviation", mean_sd_col)
           mean_sd_col <- gsub("Freq", "Frequency", mean_sd_col)
           
    ## 4.3 Correct Typo
           
           mean_sd_col <- gsub("BodyBody", "Body", mean_sd_col)
           mean_sd_col
           
    ## 4.4 Use the new labels as column names
           
           colnames(mean_sd) <- mean_sd_col
           
           
## 5. From the data set in step 4, creates a second, independent tidy dataset 
## with the average of each variable for each activity and each subject.
           
    ## 5.1 Group by subject, activity and then summarise by the mean of each variable
           
           tidy_dataset <- mean_sd %>%
                                group_by(`subject ID`, `activity ID`) %>%
                                summarise_each(funs(mean)) %>%
                                print()
           
    ## 5.2 Output the tidy_dataset as "tidy_data.txt"
           
           write.table(tidy_dataset, "tidy_data.txt", row.names = FALSE)