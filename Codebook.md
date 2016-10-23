# Getting and Cleaning Data Course Project

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

## Background information

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement.
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names.
- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


### Prerequisites

The dataset includes the following files:

- README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

### Variable list

The data sets will be assigned into the following variables:

- Labeltest 
- Labeltrain
- Testset
- Trainset
- Subjecttest
- Subjecttrain

### In next step the test and training datsets of each file type is merged and form the new datasets 
- Label 
- Dataset
- Subject

### All the 3 datasets above will be merged into 1 data set called: 
- Datatable

### The datasets need to be subseted so as to generate menaingful output, and the subset criteria is stored in
- Datasetmeanstd

### Output

Output are listed as follows:

 [1] "Subject"                                             
 [2] "Activity"                                            
 [3] "timeBodyAccelerometer-mean()-X"                      
 [4] "timeBodyAccelerometer-mean()-Y"                      
 [5] "timeBodyAccelerometer-mean()-Z"                      
 [6] "timeBodyAccelerometer-std()-X"                       
 [7] "timeBodyAccelerometer-std()-Y"                       
 [8] "timeBodyAccelerometer-std()-Z"                       
 [9] "timeGravityAccelerometer-mean()-X"                   
[10] "timeGravityAccelerometer-mean()-Y"                   
[11] "timeGravityAccelerometer-mean()-Z"                   
[12] "timeGravityAccelerometer-std()-X"                    
[13] "timeGravityAccelerometer-std()-Y"                    
[14] "timeGravityAccelerometer-std()-Z"                    
[15] "timeBodyAccelerometerJerk-mean()-X"                  
[16] "timeBodyAccelerometerJerk-mean()-Y"                  
[17] "timeBodyAccelerometerJerk-mean()-Z"                  
[18] "timeBodyAccelerometerJerk-std()-X"                   
[19] "timeBodyAccelerometerJerk-std()-Y"                   
[20] "timeBodyAccelerometerJerk-std()-Z"                   
[21] "timeBodyGyroscope-mean()-X"                          
[22] "timeBodyGyroscope-mean()-Y"                          
[23] "timeBodyGyroscope-mean()-Z"                          
[24] "timeBodyGyroscope-std()-X"                           
[25] "timeBodyGyroscope-std()-Y"                           
[26] "timeBodyGyroscope-std()-Z"                           
[27] "timeBodyGyroscopeJerk-mean()-X"                      
[28] "timeBodyGyroscopeJerk-mean()-Y"                      
[29] "timeBodyGyroscopeJerk-mean()-Z"                      
[30] "timeBodyGyroscopeJerk-std()-X"                       
[31] "timeBodyGyroscopeJerk-std()-Y"                       
[32] "timeBodyGyroscopeJerk-std()-Z"                       
[33] "timeBodyAccelerometerMagnitudenitude-mean()"         
[34] "timeBodyAccelerometerMagnitudenitude-std()"          
[35] "timeGravityAccelerometerMagnitudenitude-mean()"      
[36] "timeGravityAccelerometerMagnitudenitude-std()"       
[37] "timeBodyAccelerometerJerkMagnitudenitude-mean()"     
[38] "timeBodyAccelerometerJerkMagnitudenitude-std()"      
[39] "timeBodyGyroscopeMagnitudenitude-mean()"             
[40] "timeBodyGyroscopeMagnitudenitude-std()"              
[41] "timeBodyGyroscopeJerkMagnitudenitude-mean()"         
[42] "timeBodyGyroscopeJerkMagnitudenitude-std()"          
[43] "frequencyBodyAccelerometer-mean()-X"                 
[44] "frequencyBodyAccelerometer-mean()-Y"                 
[45] "frequencyBodyAccelerometer-mean()-Z"                 
[46] "frequencyBodyAccelerometer-std()-X"                  
[47] "frequencyBodyAccelerometer-std()-Y"                  
[48] "frequencyBodyAccelerometer-std()-Z"                  
[49] "frequencyBodyAccelerometerJerk-mean()-X"             
[50] "frequencyBodyAccelerometerJerk-mean()-Y"             
[51] "frequencyBodyAccelerometerJerk-mean()-Z"             
[52] "frequencyBodyAccelerometerJerk-std()-X"              
[53] "frequencyBodyAccelerometerJerk-std()-Y"              
[54] "frequencyBodyAccelerometerJerk-std()-Z"              
[55] "frequencyBodyGyroscope-mean()-X"                     
[56] "frequencyBodyGyroscope-mean()-Y"                     
[57] "frequencyBodyGyroscope-mean()-Z"                     
[58] "frequencyBodyGyroscope-std()-X"                      
[59] "frequencyBodyGyroscope-std()-Y"                      
[60] "frequencyBodyGyroscope-std()-Z"                      
[61] "frequencyBodyAccelerometerMagnitudenitude-mean()"    
[62] "frequencyBodyAccelerometerMagnitudenitude-std()"     
[63] "frequencyBodyAccelerometerJerkMagnitudenitude-mean()"
[64] "frequencyBodyAccelerometerJerkMagnitudenitude-std()" 
[65] "frequencyBodyGyroscopeMagnitudenitude-mean()"        
[66] "frequencyBodyGyroscopeMagnitudenitude-std()"         
[67] "frequencyBodyGyroscopeJerkMagnitudenitude-mean()"    
[68] "frequencyBodyGyroscopeJerkMagnitudenitude-std()"



