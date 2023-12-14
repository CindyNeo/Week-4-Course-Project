# Week-4-Course-Project
This Course Project pertains to Week 4 of the Getting and Cleaning Data course within the Data Science Specialization offered by Johns Hopkins University on Coursera.

**Data**

The data used for the project is available at:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

In the zip file, there are 3 training dataset, 3 testing dataset, 1 feature dataset, and 1 activity label dataset. 

For the training dataset, it consists of:
1. X_train.txt: Training set
2. y_train.txt: Training labels
3. subject_train.txt: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

For the testing dataset, it consists of:
1. X_test.txt: Test set
2. y_test.txt: Test labels
3. subject_test.txt: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

For the feature dataset, it consists of:
1. features.txt: List of all features

For the activity label dataset, it consists of:
1. activity_labels.txt: Links the class labels with their activity name


**Variables**

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals ('-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.) 
All features are normalized and bounded within [-1, 1].

The time domain signals (variables prefixed by "timeDomain") were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeDomain BodyAccelerometer-XYZ and timeDomain GravityAccelerometer-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeDomain BodyAccelerometerJerk-XYZ and timeDomain BodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeDomain BodyAccelerometerMagnitude, timeDomain GravityAccelerometerMagnitude, timeDomain BodyAccelerometerJerkMagnitude, timeDomain BodyGyroscopeMagnitude, timeDomain BodyGyroscopeJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencyDomain BodyAccelerometer-XYZ, frequencyDomain BodyAccelerometerJerk-XYZ, frequencyDomain BodyGyroscope-XYZ, frequencyDomain BodyAccelerometerJerkMagnitude, frequencyDomain BodyGyroscopeMagnitude, frequencyDomain BodyGyroscopeJerkMagnitude. (variables prefixed by "frequencyDomain"). 

The full list of the variables used in the dataset are:

 [1] "subject ID": the subject who performed the activity. Its range is from 1 to 30.    
 
 [2] "activity ID": WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING    
 
 [3] "timeDomain BodyAccelerometer-Mean()-X"                              
 [4] "timeDomain BodyAccelerometer-Mean()-Y"                              
 [5] "timeDomain BodyAccelerometer-Mean()-Z" 
 
 [6] "timeDomain BodyAccelerometer-StandardDeviation()-X"                 
 [7] "timeDomain BodyAccelerometer-StandardDeviation()-Y"                 
 [8] "timeDomain BodyAccelerometer-StandardDeviation()-Z"      
 
 [9] "timeDomain GravityAccelerometer-Mean()-X"                           
[10] "timeDomain GravityAccelerometer-Mean()-Y"                           
[11] "timeDomain GravityAccelerometer-Mean()-Z"           

[12] "timeDomain GravityAccelerometer-StandardDeviation()-X"              
[13] "timeDomain GravityAccelerometer-StandardDeviation()-Y"              
[14] "timeDomain GravityAccelerometer-StandardDeviation()-Z"        

[15] "timeDomain BodyAccelerometerJerk-Mean()-X"                          
[16] "timeDomain BodyAccelerometerJerk-Mean()-Y"                          
[17] "timeDomain BodyAccelerometerJerk-Mean()-Z"      

[18] "timeDomain BodyAccelerometerJerk-StandardDeviation()-X"             
[19] "timeDomain BodyAccelerometerJerk-StandardDeviation()-Y"             
[20] "timeDomain BodyAccelerometerJerk-StandardDeviation()-Z"     

[21] "timeDomain BodyGyroscope-Mean()-X"                                  
[22] "timeDomain BodyGyroscope-Mean()-Y"                                  
[23] "timeDomain BodyGyroscope-Mean()-Z"                  

[24] "timeDomain BodyGyroscope-StandardDeviation()-X"                     
[25] "timeDomain BodyGyroscope-StandardDeviation()-Y"                     
[26] "timeDomain BodyGyroscope-StandardDeviation()-Z"      

[27] "timeDomain BodyGyroscopeJerk-Mean()-X"                              
[28] "timeDomain BodyGyroscopeJerk-Mean()-Y"                              
[29] "timeDomain BodyGyroscopeJerk-Mean()-Z"            

[30] "timeDomain BodyGyroscopeJerk-StandardDeviation()-X"                 
[31] "timeDomain BodyGyroscopeJerk-StandardDeviation()-Y"                 
[32] "timeDomain BodyGyroscopeJerk-StandardDeviation()-Z"    

[33] "timeDomain BodyAccelerometerMagnitude-Mean()"                       
[34] "timeDomain BodyAccelerometerMagnitude-StandardDeviation()"    

[35] "timeDomain GravityAccelerometerMagnitude-Mean()"                    
[36] "timeDomain GravityAccelerometerMagnitude-StandardDeviation()" 

[37] "timeDomain BodyAccelerometerJerkMagnitude-Mean()"                   
[38] "timeDomain BodyAccelerometerJerkMagnitude-StandardDeviation()"   

[39] "timeDomain BodyGyroscopeMagnitude-Mean()"                           
[40] "timeDomain BodyGyroscopeMagnitude-StandardDeviation()"       

[41] "timeDomain BodyGyroscopeJerkMagnitude-Mean()"                       
[42] "timeDomain BodyGyroscopeJerkMagnitude-StandardDeviation()"     

[43] "frequencyDomain BodyAccelerometer-Mean()-X"                        
[44] "frequencyDomain BodyAccelerometer-Mean()-Y"                        
[45] "frequencyDomain BodyAccelerometer-Mean()-Z"                  

[46] "frequencyDomain BodyAccelerometer-StandardDeviation()-X"           
[47] "frequencyDomain BodyAccelerometer-StandardDeviation()-Y"           
[48] "frequencyDomain BodyAccelerometer-StandardDeviation()-Z"      

[49] "frequencyDomain BodyAccelerometer-MeanFrequency()-X"               
[50] "frequencyDomain BodyAccelerometer-MeanFrequency()-Y"               
[51] "frequencyDomain BodyAccelerometer-MeanFrequency()-Z"         

[52] "frequencyDomain BodyAccelerometerJerk-Mean()-X"                    
[53] "frequencyDomain BodyAccelerometerJerk-Mean()-Y"                    
[54] "frequencyDomain BodyAccelerometerJerk-Mean()-Z"             

[55] "frequencyDomain BodyAccelerometerJerk-StandardDeviation()-X"       
[56] "frequencyDomain BodyAccelerometerJerk-StandardDeviation()-Y"       
[57] "frequencyDomain BodyAccelerometerJerk-StandardDeviation()-Z"     

[58] "frequencyDomain BodyAccelerometerJerk-MeanFrequency()-X"           
[59] "frequencyDomain BodyAccelerometerJerk-MeanFrequency()-Y"           
[60] "frequencyDomain BodyAccelerometerJerk-MeanFrequency()-Z"     

[61] "frequencyDomain BodyGyroscope-Mean()-X"                            
[62] "frequencyDomain BodyGyroscope-Mean()-Y"                            
[63] "frequencyDomain BodyGyroscope-Mean()-Z"         

[64] "frequencyDomain BodyGyroscope-StandardDeviation()-X"               
[65] "frequencyDomain BodyGyroscope-StandardDeviation()-Y"               
[66] "frequencyDomain BodyGyroscope-StandardDeviation()-Z"     

[67] "frequencyDomain BodyGyroscope-MeanFrequency()-X"                   
[68] "frequencyDomain BodyGyroscope-MeanFrequency()-Y"                   
[69] "frequencyDomain BodyGyroscope-MeanFrequency()-Z"        

[70] "frequencyDomain BodyAccelerometerMagnitude-Mean()"                 
[71] "frequencyDomain BodyAccelerometerMagnitude-StandardDeviation()"  
[72] "frequencyDomain BodyAccelerometerMagnitude-MeanFrequency()"      

[73] "frequencyDomain BodyAccelerometerJerkMagnitude-Mean()"             
[74] "frequencyDomain BodyAccelerometerJerkMagnitude-StandardDeviation()"  
[75] "frequencyDomain BodyAccelerometerJerkMagnitude-MeanFrequency()"    

[76] "frequencyDomain BodyGyroscopeMagnitude-Mean()"                     
[77] "frequencyDomain BodyGyroscopeMagnitude-StandardDeviation()"        
[78] "frequencyDomain BodyGyroscopeMagnitude-MeanFrequency()"    

[79] "frequencyDomain BodyGyroscopeJerkMagnitude-Mean()"                 
[80] "frequencyDomain BodyGyroscopeJerkMagnitude-StandardDeviation()"    
[81] "frequencyDomain BodyGyroscopeJerkMagnitude-MeanFrequency()"       

**Transformations performed to clean up the data**

The following transformation were performed to clean up the dataset.
1. The training and test datasets were firstly merged together to create one dataset.
2. Thereafter, only measurements related to the mean and standard deviation for each measurement were extracted.
3. As the activities in the dataset was labelled as 1, 2, etc, the descriptive activity names were used to name the activities in the dataset.
4. The columns for the dataset were also labeled appropriately with descriptive variable names.
5. Finally, a tidy dataset with the average of each variable for each activity and each subject was created.
