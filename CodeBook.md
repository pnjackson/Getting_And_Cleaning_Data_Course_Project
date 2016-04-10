# Code Book
The goal of this project is to prepare tidy data that can be used for later analysis. This is a code book that includes information about the data used, the transformations and coversions inplemented after collecting the data and  information about the variables of the  data sets.

## Information about the script file run_analysis.R

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

## Below are the Variables in the tidy.txt data set. I have given the column number and the name of the columns.

(column 1) Participant Id: This is a subject number 1 to 30 each representing a participant in the study.

(column 2) activity: This is an activity that the subject was doing

(column  3) tBodyAcc-mean-X 

(column  4) tBodyAcc-mean-Y

(column  5) tBodyAcc-mean-Z

(column  6) tBodyAcc-std-X

(column  7) tBodyAcc-std-Y

(column  8) tBodyAcc-std-Z

(column  9) tGravityAcc-mean-X

(column 10) tGravityAcc-mean-Y

(column 11) tGravityAcc-mean-Z

(column 12) tGravityAcc-std-X

(column 13) tGravityAcc-std-Y

(column 14) tGravityAcc-std-Z

(column 15) tBodyAccJerk-mean-X

(column 16) tBodyAccJerk-mean-Y

(column 17) tBodyAccJerk-mean-Z

(column 18) tBodyAccJerk-std-X

(column 19) tBodyAccJerk-std-Y

(column 20) tBodyAccJerk-std-Z

(column 21)tBodyGyro-mean-X

(column 22)tBodyGyro-mean-Y

(column 23) tBodyGyro-mean-Z

(column 24) tBodyGyro-std-X

(column 25) tBodyGyro-std-Y

(column 26) tBodyGyro-std-Z

(column 27) tBodyGyroJerk-mean-X

(column 28) tBodyGyroJerk-mean-Y

(column 29) tBodyGyroJerk-mean-Z

(column 30) tBodyGyroJerk-std-X

(column 31) tBodyGyroJerk-std-Y

(column 32) tBodyGyroJerk-std-Z

(column 33) tBodyAccMag-mean

(column 34) tBodyAccMag-std

(column 35) tGravityAccMag-mean

(column 36) tGravityAccMag-std

(column 37) tBodyAccJerkMag-mean

(column 38) tBodyAccJerkMag-std

(column 39) tBodyGyroMag-mean

(column 40) tBodyGyroMag-std

(column 41) tBodyGyroJerkMag-mean

(column 42) tBodyGyroJerkMag-std

(column 43) fBodyAcc-mean-X

(column 44) fBodyAcc-mean-Y

(column 45) fBodyAcc-mean-Z

(column 46) fBodyAcc-std-X

(column 47) fBodyAcc-std-Y

(column 48) fBodyAcc-std-Z

(column 49) fBodyAccJerk-mean-X

(column 50) fBodyAccJerk-mean-Y

(column 51) fBodyAccJerk-mean-Z

(column 52) fBodyAccJerk-std-X

(column 53) fBodyAccJerk-std-Y

(column 54) fBodyAccJerk-std-Z

(column 55) fBodyGyro-mean-X

(column 56) fBodyGyro-mean-Y

(column 57) fBodyGyro-mean-Z

(column 58) fBodyGyro-std-X

(column 59) fBodyGyro-std-Y

(column 60) fBodyGyro-std-Z

(column 61) fBodyAccMag-mean

(column 62) fBodyAccMag-std

(column 63) fBodyBodyAccJerkMag-mean

(column 64) fBodyBodyAccJerkMag-std

(column 65) fBodyBodyGyroMag-mean

(column 66) fBodyBodyGyroMag-std

(column 67) fBodyBodyGyroJerkMag-mean

(column 68) fBodyBodyGyroJerkMag-std
