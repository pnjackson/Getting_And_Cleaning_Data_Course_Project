## Code Book
 The goal of this project is to prepare tidy data that can be used for later analysis. This is a code book that includes information about the data used, the transformations and coversions inplemented after collecting the data and  information about the variables of the  data sets.

# Information about the script file run_analysis.R

The data was retreived from the UCI Machine Learning Repository. The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. THe steps involed in the R Script run_analysis are given in the following steps below.
 1. Sets the zip file name.
 2. Downloads and unzips the filename
 3. Sets the variables for their locations
 4. Looks for a data folder and creates it if it is not there
 5. Loads the activity labels for the data set.
 6. Extracts the mean and standard deviation data
 7. Loads all of the data sets
 8. Merges the training and test data sets and adds their labels
 9. Converts the data into factors
10. Creates the tidy data set that has the mean value for each individual.
11. The ending file created is tidy.txt


# Below are the Variables in the tidy.txt data set. I have given the column number and the name of the columns.

(column 1) subjectId: This is a subject number 1 to 30 each representing a participant in the study.
(column 2) activity: This is an activity that the subject was doing
(column  4) tBodyAcc-mean-X 
(column  5) tBodyAcc-mean-Y
(column  6) tBodyAcc-mean-Z
(column  7) tBodyAcc-std-X
(column  8) tBodyAcc-std-Y
(column  9) tBodyAcc-std-Z
(column 10) tGravityAcc-mean-X
(column 11) tGravityAcc-mean-Y
(column 12) tGravityAcc-mean-Z
(column 13) tGravityAcc-std-X
(column 14) tGravityAcc-std-Y
(column 15) tGravityAcc-std-Z
(column 16) tBodyAccJerk-mean-X
(column 17) tBodyAccJerk-mean-Y
(column 18) tBodyAccJerk-mean-Z
(column 19) tBodyAccJerk-std-X
(column 20) tBodyAccJerk-std-Y
(column 21) tBodyAccJerk-std-Z
(column 22)tBodyGyro-mean-X
(column 23)tBodyGyro-mean-Y
(column 24) tBodyGyro-mean-Z
(column 25) tBodyGyro-std-X
(column 26) tBodyGyro-std-Y
(column 27) tBodyGyro-std-Z
(column 28) tBodyGyroJerk-mean-X
(column 29) tBodyGyroJerk-mean-Y
(column 30) tBodyGyroJerk-mean-Z
(column 31) tBodyGyroJerk-std-X
(column 32) tBodyGyroJerk-std-Y
(column 33) tBodyGyroJerk-std-Z
(column 34) tBodyAccMag-mean
(column 35) tBodyAccMag-std
(column 36) tGravityAccMag-mean
(column 37) tGravityAccMag-std
(column 38) tBodyAccJerkMag-mean
(column 39) tBodyAccJerkMag-std
(column 40) tBodyGyroMag-mean
(column 41) tBodyGyroMag-std
(column 42) tBodyGyroJerkMag-mean
(column 43) tBodyGyroJerkMag-std
(column 44) fBodyAcc-mean-X
(column 45) fBodyAcc-mean-Y
(column 46) fBodyAcc-mean-Z
(column 47) fBodyAcc-std-X
(column 48) fBodyAcc-std-Y
(column 49) fBodyAcc-std-Z
(column 50) fBodyAccJerk-mean-X
(column 51) fBodyAccJerk-mean-Y
(column 52) fBodyAccJerk-mean-Z
(column 53) fBodyAccJerk-std-X
(column 54) fBodyAccJerk-std-Y
(column 55) fBodyAccJerk-std-Z
(column 56) fBodyGyro-mean-X
(column 57) fBodyGyro-mean-Y
(column 58) fBodyGyro-mean-Z
(column 59) fBodyGyro-std-X
(column 60) fBodyGyro-std-Y
(column 61) fBodyGyro-std-Z
(column 62) fBodyAccMag-mean
(column 63) fBodyAccMag-std
(column 64) fBodyBodyAccJerkMag-mean
(column 65) fBodyBodyAccJerkMag-std
(column 66) fBodyBodyGyroMag-mean
(column 67) fBodyBodyGyroMag-std
(column 68) fBodyBodyGyroJerkMag-mean
(column 69) fBodyBodyGyroJerkMag-std