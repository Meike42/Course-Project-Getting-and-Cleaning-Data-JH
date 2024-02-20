---
output:
  word_document: default
  html_document: default
  pdf_document: default
---

**Code Book Human Activity Recognition Using Smartphones Dataset (USI HAR)**

Data belonging to this code book (tidydatawide.txt) can be generated using the run_analysis.R script and read into R with the following code:

`data <- read.table(file_path, header = TRUE)`

`View(data)`

Apart from subjectid and activity, all variables are numeric, normalized, and bounded within [-1,1]. They represent mean values across observations, within a participant doing a certain activity.\

subjectid\
*ID number of study participant*\
    1 - 30

activity\
*Activity performed by participant during measurement*\
    1. walking\
    2. walking upstairs\
    3. walking downstairs\
    4. sitting\
    5. standing\
    6. laying

tBodyAcc.mean.X\
*Time domain signal, body linear acceleration in x direction, mean*

tBodyAcc.mean.Y\
*Time domain signal, body linear acceleration in y direction, mean*

tBodyAcc.mean.Z\
*Time domain signal, body linear acceleration in z direction, mean*

tBodyAcc.std.X\
*Time domain signal, body linear acceleration in x direction, standard deviation*

tBodyAcc.std.Y\
*Time domain signal, body linear acceleration in y direction, standard deviation*

tBodyAcc.std.Z\
*Time domain signal, body linear acceleration in z direction, standard deviation*

tGravityAcc.mean.X\
*Time domain signal, gravity acceleration in x direction, mean*

tGravityAcc.mean.Y\
*Time domain signal, gravity acceleration in y direction, mean*

tGravityAcc.mean.\
*Z Time domain signal, gravity acceleration in z direction, mean*

tGravityAcc.std.X\
*Time domain signal, gravity acceleration in x direction, standard deviation*

tGravityAcc.std.Y\
*Time domain signal, gravity acceleration in y direction, standard deviation*

tGravityAcc.std.Z\
*Time domain signal, gravity acceleration in z direction, standard deviation*

tBodyAccJerk.mean.X\
*Time domain signal, body acceleration in x direction, jerk signal, mean*

tBodyAccJerk.mean.Y\
*Time domain signal, body acceleration in y direction, jerk signal, mean*

tBodyAccJerk.mean.Z\
*Time domain signal, body acceleration in z direction, jerk signal, mean*

tBodyAccJerk.std.X\
*Time domain signal, body acceleration in x direction, jerk signal, standard deviation*

tBodyAccJerk.std.Y\
*Time domain signal, body acceleration in y direction, jerk signal, standard deviation*

tBodyAccJerk.std.Z\
*Time domain signal, body acceleration in z direction, jerk signal, standard deviation*

tBodyGyro.mean.X\
*Time domain signal, body angular velocity in x direction, mean*

tBodyGyro.mean.Y\
*Time domain signal, body angular velocity in y direction, mean*

tBodyGyro.mean.Z\
*Time domain signal, body angular velocity in z direction, mean*

tBodyGyro.std.X\
*Time domain signal, body angular velocity in x direction, standard deviation*

tBodyGyro.std.Y\
*Time domain signal, body angular velocity in y direction, standard deviation*

tBodyGyro.std.Z\
*Time domain signal, body angular velocity in z direction, standard deviation*

tBodyGyroJerk.mean.X\
*Time domain signal, body angular velocity in x direction, jerk signal, mean*

tBodyGyroJerk.mean.Y\
*Time domain signal, body angular velocity in y direction, jerk signal, mean*

tBodyGyroJerk.mean.Z\
*Time domain signal, body angular velocity in z direction, jerk signal, mean*

tBodyGyroJerk.std.X\
*Time domain signal, body angular velocity in x direction, jerk signal, standard deviaton*

tBodyGyroJerk.std.Y\
*Time domain signal, body angular velocity in y direction, jerk signal, standard deviaton*

tBodyGyroJerk.std.Z\
*Time domain signal, body angular velocity in z direction, jerk signal, standard deviaton*

tBodyAccMag.mean\
*Time domain signal, body acceleration, magnitude of three-dimensional signal, mean*

tBodyAccMag.std\
*Time domain signal, body acceleration, magnitude of three-dimensional signal, standard deviation*

tGravityAccMag.mean\
*Time domain signal, gravity acceleration, magnitude of three-dimensional signal, mean*

tGravityAccMag.std\
*Time domain signal, gravity acceleration, magnitude of three-dimensional signal, standard deviation*

tBodyAccJerkMag.mean\
*Time domain signal, body acceleration, magnitude of three-dimensional jerk signal, mean*

tBodyAccJerkMag.std\
*Time domain signal, body acceleration, magnitude of three-dimensional jerk signal, standard deviation*

tBodyGyroMag.mean\
*Time domain signal, body angular velocity, magnitude of three-dimensional signal, mean*

tBodyGyroMag.std\
*Time domain signal, body angular velocity, magnitude of three-dimensional signal, standard deviation*

tBodyGyroJerkMag.mean\
*Time domain signal, body angular velocity, magnitude of three-dimensional jerk signal, mean*

tBodyGyroJerkMag.std\
*Time domain signal, body angular velocity, magnitude of three-dimensional jerk signal, standard deviation*

fBodyAcc.mean.X\
*Frequency domain signal, body linear acceleration in x direction, mean*

fBodyAcc.mean.Y\
*Frequency domain signal, body linear acceleration in y direction, mean*

fBodyAcc.mean.Z\
*Frequency domain signal, body linear acceleration in z direction, mean*

fBodyAcc.std.X\
*Frequency domain signal, body linear acceleration in x direction, standard deviation*

fBodyAcc.std.Y\
*Frequency domain signal, body linear acceleration in y direction, standard deviation*

fBodyAcc.std.Z\
*Frequency domain signal, body linear acceleration in z direction, standard deviation*

fBodyAcc.meanFreq.X\
*Frequency domain signal, body linear acceleration in x direction, mean frequency*

fBodyAcc.meanFreq.Y\
*Frequency domain signal, body linear acceleration in y direction, mean frequency*

fBodyAcc.meanFreq.Z\
*Frequency domain signal, body linear acceleration in z direction, mean frequency*

fBodyAccJerk.mean.X\
*Frequency domain signal, body acceleration in x direction, jerk signal, mean*

fBodyAccJerk.mean.Y\
*Frequency domain signal, body acceleration in y direction, jerk signal, mean*

fBodyAccJerk.mean.Z\
*Frequency domain signal, body acceleration in z direction, jerk signal, mean*

fBodyAccJerk.std.X\
*Frequency domain signal, body acceleration in x direction, jerk signal, standard deviation*

fBodyAccJerk.std.Y\
*Frequency domain signal, body acceleration in y direction, jerk signal, standard deviation*

fBodyAccJerk.std.Z\
*Frequency domain signal, body acceleration in z direction, jerk signal, standard deviation*

fBodyAccJerk.meanFreq.X\
*Frequency domain signal, body acceleration in x direction, jerk signal, mean frequency*

fBodyAccJerk.meanFreq.Y\
*Frequency domain signal, body acceleration in y direction, jerk signal, mean frequency*

fBodyAccJerk.meanFreq.Z\
*Frequency domain signal, body acceleration in z direction, jerk signal, mean frequency*

fBodyGyro.mean.X\
*Frequency domain signal, body angular velocity in x direction, mean*

fBodyGyro.mean.Y\
*Frequency domain signal, body angular velocity in y direction, mean*

fBodyGyro.mean.Z\
*Frequency domain signal, body angular velocity in z direction, mean*

fBodyGyro.std.X\
*Frequency domain signal, body angular velocity in x direction, standard deviation*

fBodyGyro.std.Y\
*Frequency domain signal, body angular velocity in y direction, standard deviation*

fBodyGyro.std.Z\
*Frequency domain signal, body angular velocity in z direction, standard deviation*

fBodyGyro.meanFreq.X\
*Frequency domain signal, body angular velocity in x direction, mean frequency*

fBodyGyro.meanFreq.Y\
*Frequency domain signal, body angular velocity in y direction, mean frequency*

fBodyGyro.meanFreq.Z\
*Frequency domain signal, body angular velocity in z direction, mean frequency*

fBodyAccMag.mean\
*Frequency domain signal, body acceleration, magnitude of three-dimensional signal, mean*

fBodyAccMag.std\
*Frequency domain signal, body acceleration, magnitude of three-dimensional signal, standard deviation*

fBodyAccMag.meanFreq\
*Frequency domain signal, body acceleration, magnitude of three-dimensional signal, mean frequency*

fBodyBodyAccJerkMag.mean\
*Frequency domain signal, body acceleration, magnitude of three-dimensional jerk signal, mean*

fBodyBodyAccJerkMag.std\
*Frequency domain signal, body acceleration, magnitude of three-dimensional jerk signal, standard deviation*

fBodyBodyAccJerkMag.meanFreq\
*Frequency domain signal, body acceleration, magnitude of three-dimensional jerk signal, mean frequency*

fBodyBodyGyroMag.mean\
*Frequency domain signal, body angular velocity, magnitude of three-dimensional signal, mean*

fBodyBodyGyroMag.std\
*Frequency domain signal, body angular velocity, magnitude of three-dimensional signal, standard deviation*

fBodyBodyGyroMag.meanFreq\
*Frequency domain signal, body angular velocity, magnitude of three-dimensional signal, mean frequency*

fBodyBodyGyroJerkMag.mean\
*Frequency domain signal, body angular velocity, magnitude of three-dimensional jerk signal, mean*

fBodyBodyGyroJerkMag.std\
*Frequency domain signal, body angular velocity, magnitude of three-dimensional jerk signal, standard deviation*

fBodyBodyGyroJerkMag.meanFreq\
*Frequency domain signal, body angular velocity, magnitude of three-dimensional jerk signal, mean frequency*
