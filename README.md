# Week-4-Course-Project
This Course Project pertains to Week 4 of the Getting and Cleaning Data course within the Data Science Specialization offered by Johns Hopkins University on Coursera.

**Background of the project**

One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. 

For this project, the source dataset was obtained from the Human Activity Recognition Using Smartphones Dataset, where the data was collected as follows:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, they captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

**Steps performed for the Course Project**

1. The training and test datasets were firstly merged together to create one dataset.
2. Thereafter, only measurements related to the mean and standard deviation for each measurement were extracted.
3. As the activities in the dataset was labelled as 1, 2, etc, the descriptive activity names were used to name the activities in the dataset.
4. The columns for the dataset were also labeled appropriately with descriptive variable names.
5. Finally, a tidy dataset with the average of each variable for each activity and each subject was created. 

A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
 
The data used for the project is available at:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

**Repository**

The repository contains the following files:

	README.md - This provides the background of the project, overview of the dataset, and the steps performed for the project 
	CodeBook.md - This describes the variables, the data, and any transformations performed to clean up the data
	run_analysis.R - This is the R script that was used to perform the steps for the project
	tidy_data.txt - The tidy dataset with the average of each variable for each activity and each subject
