## This is a script to prepare tidy data that can be used for later analysis. 
## This is an R script called run_analysis.R that does the following.
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names.
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Set the working directory for the script.
setwd("C:/Users/diabolique143/Desktop/Coursera/GettingAndCleansingData/Project")

## Flexibly Reshape Data: A Reboot of the Reshape Package.
library(reshape2)

## set the zip file file name
downloadFile <- "data/getdata_dataset.zip"

## download and unzip the filename
downloadURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

## set variables for their locations
trainXFile <- "./data/UCI HAR Dataset/train/X_train.txt"
trainLabels <- "./data/UCI HAR Dataset/train/y_train.txt"
trainSubjectFile <- ".data/UCI HAR Dataset/train/subject_train.txt"
testXFile <- "./data/UCI HAR Dataset/test/X_test.txt"
testLabels <- "./data/UCI HAR Dataset/test/y_test.txt"
testSubjectFile <- ".data/UCI HAR Dataset/test/subject_test.txt"

## look for data folder and create if not there
if(!file.exists("./data")) { dir.create("./data")}
if (!file.exists(downloadFile)) 
{
  download.file(downloadURL, downloadFile);
unzip(downloadFile, overwrite = T, exdir = ".")
}

## Load activity labels for the data set
activityLabels <- read.table("C:/Users/diabolique143/Desktop/Coursera/GettingAndCleansingData/Project/UCI HAR Dataset/activity_labels.txt")
activityLabels[,2] <- as.character(activityLabels[,2])
features <- read.table("C:/Users/diabolique143/Desktop/Coursera/GettingAndCleansingData/Project/UCI HAR Dataset/features.txt")
features[,2] <- as.character(features[,2])

## Extract mean and standard deviation data
featuresWanted <- grep(".*mean.*|.*std.*", features[,2])
featuresWanted.names <- features[featuresWanted,2]
featuresWanted.names = gsub('-mean', 'Mean', featuresWanted.names)
featuresWanted.names = gsub('-std', 'Std', featuresWanted.names)
featuresWanted.names <- gsub('[-()]', '', featuresWanted.names)

## Load all of the data sets
train <- read.table("C:/Users/diabolique143/Desktop/Coursera/GettingAndCleansingData/Project/UCI HAR Dataset/train/X_train.txt")[featuresWanted]
trainActivities <- read.table("C:/Users/diabolique143/Desktop/Coursera/GettingAndCleansingData/Project/UCI HAR Dataset/train/Y_train.txt")
trainSubjects <- read.table("C:/Users/diabolique143/Desktop/Coursera/GettingAndCleansingData/Project/UCI HAR Dataset/train/subject_train.txt")
train <- cbind(trainSubjects, trainActivities, train)
test <- read.table("C:/Users/diabolique143/Desktop/Coursera/GettingAndCleansingData/Project/UCI HAR Dataset/test/X_test.txt")[featuresWanted]
testActivities <- read.table("C:/Users/diabolique143/Desktop/Coursera/GettingAndCleansingData/Project/UCI HAR Dataset/test/Y_test.txt")
testSubjects <- read.table("C:/Users/diabolique143/Desktop/Coursera/GettingAndCleansingData/Project/UCI HAR Dataset/test/subject_test.txt")
test <- cbind(testSubjects, testActivities, test)

## merge training and test data sets and add the labels of them
combinedData <- rbind(train, test)
colnames(combinedData) <- c("subject", "activity", featuresWanted.names)

## Convert data into factors
combinedData$activity <- factor(combinedData$activity, levels = activityLabels[,1], labels = activityLabels[,2])
combinedData$subject <- as.factor(combinedData$subject)
combinedData.melted <- melt(combinedData, id = c("subject", "activity"))
combinedData.mean <- dcast(combinedData.melted, subject + activity ~ variable, mean)

## Create the tidy data set
write.table(combinedData.mean, "tidy.txt", row.names=FALSE, quote=FALSE)
