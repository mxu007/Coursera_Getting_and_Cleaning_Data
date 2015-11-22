# This script firstly merges the training and test datasets
# Then it extracts only measurements on the mean and std of each measurements
# Next it adds descriptive activity names
# Followed by descriptive variable names for the whole dataset
# It ends with creating a second, independent tidy dataset with the average
# of each variable for each activity and each subject

library(reshape2)

# Step 1, merging training and test datasets

# Read training data, label and subject
TrainingData <- read.table("./UCI HAR Dataset/train/X_train.txt")
TrainingLabel <- read.table("./UCI HAR Dataset/train/y_train.txt")
TrainingSubject <- read.table("./UCI HAR Dataset/train/subject_train.txt")

# Reading test data, label and subject
TestData <- read.table("./UCI HAR Dataset/test/X_test.txt")
TestLabel <- read.table("./UCI HAR Dataset/test/y_test.txt")
TestSubject <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# Row Combine the dataset to become joint data
JointData <- rbind(TrainingData, TestData)
JointLabel <- rbind(TrainingLabel, TestLabel)
JointSubject <- rbind(TrainingSubject, TestSubject)


# Step 2 Extract the measurements only on mean and std, please note there
# 561 features for each measurement. "features_info.txt" gives explanation 
# on "features.txt")

# Reading feature list
Features <- read.table("./UCI HAR Dataset/features.txt")
# Search for the position of rows contain 'mean" & "std"
MeanStdPos <- rbind(Features[(grep("mean", Features$V2)),], 
	Features[(grep("std", Features$V2)),])
# Extract mean & std from JointData
JointData <- JointData[,(MeanStdPos$V1)]


# Step 3 Use descriptive activity names to name training labels

# Read the Activity List from  "activity_labels.txt"
ActivityList <- read.table("./UCI HAR Dataset/activity_labels.txt")
ActivityLabel <- ActivityList[JointLabel[,1],]
JointLabel[,1] <- ActivityLabel[,2]
names(JointLabel) <- "Activity"

# Step 4 Appropriately labels the dataset with descriptive variable names

# Name the subject column
names(JointSubject) <- "Subject"
# Name the mean & std variable columns
names(JointData) <- MeanStdPos[,2]
CombinedData <- cbind(JointSubject, JointLabel, JointData)
# Write CombinedData to a txt file
write.table(CombinedData, "./UCI HAR Dataset/CombinedData.txt", sep="\t", row.name=FALSE)


# Step 5 From the dataset in previous step, tidy the dataset with
# average of each variable for each activity and each subject
# Reshape the data using reshape2 package
ReshapeData <- melt(CombinedData, id = c("Subject", "Activity"))
# Decast the data
DecastData <- dcast(ReshapeData, Subject + Activity ~ variable, mean)
# Write DecastData to a txt file
write.table(DecastData, "./UCI HAR Dataset/DecastData.txt", sep="\t", row.name=FALSE)