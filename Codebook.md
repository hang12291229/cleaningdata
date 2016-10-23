
Code book 

Project description

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. 

The goal is to prepare tidy data that can be used for later analysis.

The requirement include:

1.Merges the training and the test sets to create one data set.

2.Extracts only the measurements on the mean and standard deviation for each measurement.

3.Uses descriptive activity names to name the activities in the data set

4.Appropriately labels the data set with descriptive variable names.

5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


Step 1:Download the data 
Download and unzip the data from the link


Step 2:Load all data frame into R
Load all the data for both test and training set include label, subjects and data set into R


Step 3:Merge the test and training data for all the the file categories 
Merge the test and training data of each file type, and formulate 3 files (label for all data, subject for all data and dataset for all data)


Step 4:Merge all data into one data table
Merge all data into one data table


Step 5 Extracts only the measurements on the mean and standard deviation
Set the criteria to subset the data i.e name of the features consists mean or std, also with subject and activity
And apply to the data set 


Step 6: Uses descriptive activity names to name the activities in the data set
Set descriptive activity names from the feature list e.g Walking, running to factors variables in activity so as to show the factor more clearly 


Step 7: Change the label of all other factor
To better describe the observation


Step 8: Generate the new dataset for further analysis
