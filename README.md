---
output:
  word_document: default
  html_document: default
  pdf_document: default
---

**Course Project Getting and Cleaning Data**

The data for this course project represent data collected from the accelerometers from the Samsung Galaxy S smartphone (Anguita et al., 2012). The data were obtained from a group of 30 volunteers between the ages of 19 and 48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial (XYZ) linear acceleration and 3-axial (XYZ) angular velocity were captured at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components (tBodyAcc-XYZ and tGravityAcc-XYZ), was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time (prefix 't' to denote time) and frequency domain (prefix 'f' to denote frequency).

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag.

The following documents are part of this course project:

-   README.md: The current file, which explains how all course project files are connected.

-   tidydatawide.txt: Tidy dataset, obtained by running run_analysis.R. The tidy data can be read into R with the following code:

    `data <- read.table(file_path, header = TRUE)`

    `View(data)`

-   run_analysis.R: R script, that performs the following steps to create a tidy dataset (i.e., a tidy data text file that meets the principles of Wickham (1994)):

    -   Merges the training and the test sets to create one data set.

    -   Extracts only the measurements on the mean and standard deviation for each measurement.

    -   Uses descriptive activity names to name the activities in the data set

    -   Appropriately labels the data set with descriptive variable names.

    -   From the data set the previous step, creates a second, independent tidy data set with the average of each variable for each activity and each subject (tidydatawide.txt). Thus, apart from subjectid and activity, all variables are numeric, normalized, and bounded within [-1,1] and they represent mean values across observations, within a participant doing a certain activity.

-   CodeBook.md: File that describes the variables and the data in tidydatawide.txt\

References:

Anguita, D., Ghio, A., Oneto, L., Parra, X., and Reyes-Ortiz., J. L. (2012). *Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine.* International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain.

Wickham, H., (2014). Tidy Data, *Journal of Statistical Software, Foundation for Open Access Statistics, 59* (10), 1-23. doi: 10.18637/jss.v059.i10.
