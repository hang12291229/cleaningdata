#Filename: run_analysis.R

#Author: Leung Pak Hang 

#Project description
#The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. 
#The goal is to prepare tidy data that can be used for later analysis.

#The requirement include:
#1.Merges the training and the test sets to create one data set.
#2.Extracts only the measurements on the mean and standard deviation for each measurement.
#3.Uses descriptive activity names to name the activities in the data set
#4.Appropriately labels the data set with descriptive variable names.
#5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


#You will be required to submit: 
#1.A tidy data set as described below
#2.A link to a Github repository with your script for performing the analysis
#3.A code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. 

#1.Merges the training and the test sets to create one data set.
#Step 1: Download and unzip the data into  folder ‘UCI HAR Dataset’
#Step 2: Read the data and create data table as follows
	#Read label files
Labeltest <- read.table(file.path(filepath, "test", "Y_test.txt" ),header = FALSE)
Labeltrain <- read.table(file.path(filepath, "train", "Y_train.txt" ),header = FALSE)
	#Read test and training data set
Testset <- read.table(file.path(filepath, "test", "X_test.txt" ),header = FALSE)
Trainset <- read.table(file.path(filepath, "train", "X_train.txt" ),header = FALSE) 
	#Read subject files
Subjecttest <- read.table(file.path(filepath, "test","subject_test.txt"), header = FALSE)
Subjecttrain <- read.table(file.path(filepath, "train","subject_train.txt"), header = FALSE)

	#Check the label datasets
str(Labeltest)
str(Labeltrain)
	#Check the test and training datasets
str(Testset)
str(Trainset)
	#Check the subject datasets
str(Subjecttest)
str(Subjecttrain)

#Step 3: Merge the test and training data 
Label <- rbind(Labeltest, Labeltrain)
Dataset <- rbind(Testset, Training)
Subject <- rbind(Subjecttest, Subjecttrain)

#Step 4: Rename the variables
names(Label) <- c("activity")
names(Subject)<-c("subject")
DatasetNames <- read.table(file.path(filepath,"features.txt"), header=FALSE)
names(Dataset) <- DatasetNames$V2

#Step 5: Merge all data into 1 dataset 
sublab <- cbind(Subject,Label)
Datatable <- cbind(sublab,Dataset)

#2.Extracts only the measurements on the mean and standard deviation for each measurement.
#Step 1: Take all the names from the feature file that match the mean and standard deviation
Datasetmeanstd <- grep("mean\\(\\)|std\\(\\)",DatasetNames$V2, value=TRUE)
str(Datasetmeanstd)	
#Step 2: Form the subset criteria 
Datasetmeanstd <- union(c("Subject","Activity"),Datasetmeanstd)
str(Datasetmeanstd)
#Step 3: Apply the subet into the data set 
Datatable <- subset(Datatable, select=Datasetmeanstd)
str(Datatable)

#3.Uses descriptive activity names to name the activities in the data set
#Step 1: Read descriptive activity names from “activity_labels.txt”
Labelnames <-  read.table(file.path(filepath, "activity_labels.txt"), header = FALSE)
str(Labelnames)
#Step 2: Assign the activity name into the data frame to provide description e.g replace "2" with Walking"
Datatable$Activity <- factor(Datatable$Activity, labels=as.character(Labelnames$V2))
#Step 3: Check the result
head(Datatable$Activity,10)
head(Datatable,10)

#4.Appropriately labels the data set with descriptive variable names.
names(Datatable)<-gsub("^t", "time", names(Datatable))
names(Datatable)<-gsub("^f", "frequency", names(Datatable))
names(Datatable)<-gsub("Acc", "Accelerometer", names(Datatable))
names(Datatable)<-gsub("Gyro", "Gyroscope", names(Datatable))
names(Datatable)<-gsub("Mag", "Magnitude", names(Datatable))
names(Datatable)<-gsub("BodyBody", "Body", names(Datatable))
names(Datatable) 

#5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
write.table(Datatable, "NewData.txt", row.name=FALSE)
