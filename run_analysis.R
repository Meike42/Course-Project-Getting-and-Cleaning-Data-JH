#Step 0

#load libraries
library(dplyr)
library(tidyr)

#Downloading and reading files

#Set working directory, download zip, and have a look at folders

getwd()
setwd("C:/Users/Meike/Desktop/Werk programmeren/Data Science JH/Getting and Cleaning Data/Week 4/Assignment")

zipfileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipfile <-  download.file(zipfileUrl, destfile = "./UCI HAR Dataset.zip")
outdir = getwd()
UCI_HARdata <- unzip("./UCI HAR Dataset.zip", exdir = outdir)
unlink(temp)
dateDownloaded_UCIHAR <- date()
dateDownloaded_UCIHAR

list.files("./UCI HAR Dataset")
list.files("./UCI HAR Dataset/test")
list.files("./UCI HAR Dataset/train")

#read in data
xtestdata <- read.table("./UCI HAR Dataset/test/X_test.txt")
xtraindata <- read.table("./UCI HAR Dataset/train/X_train.txt")
ytestdata <- read.table("./UCI HAR Dataset/test/y_test.txt")
ytraindata <- read.table("./UCI HAR Dataset/train/y_train.txt")
subjecttestdata <- read.table("./UCI HAR Dataset/test/subject_test.txt")
subjecttraindata <- read.table("./UCI HAR Dataset/train/subject_train.txt")
activitylabelsdata <- read.table("./UCI HAR Dataset/activity_labels.txt")
featuresdata <- read.table("./UCI HAR Dataset/features.txt")


#Step 1
#Merge the training and the test sets to create one data set.

#have a look at data
dim(xtestdata)
dim(xtraindata)
dim(ytestdata)
dim(ytraindata)
dim(subjecttestdata)
dim(subjecttraindata)
dim(activitylabelsdata)
dim(featuresdata)

table(ytraindata)
table(ytestdata)
table(activitylabelsdata)

names(xtestdata)
names(ytestdata)
names(subjecttestdata)
names(activitylabelsdata)
names(featuresdata)

#Combine rows test- + train- data

subjectdata <- rbind(subjecttraindata, subjecttestdata)
ydata <- rbind(ytestdata, ytraindata)
xdata <- rbind(xtestdata, xtraindata)

str(subjectdata)
str(ydata)
str(xdata)

View(subjectdata)
View(featuresdata)

head(subjectdata, 50)
head(ydata, 50)
head(xdata, 50)

totaldata <- cbind(subjectdata, ydata, xdata)
str(totaldata)

#Step 2
# Extract only the measurements on the mean and standard deviation for each measurement

#create a vector to help select column numbers
#featuresdata contains variable names of xdata in V2 and column numbers of xdata in V1
#search for words "mean" and "std" (standard deviation) in V2, and save corresponding
#column numbers in a vector. 
meanindex <- grep("mean", featuresdata$V2)
stdindex <- grep("std", featuresdata$V2)

#add 2 to indices (The first two columns in totaldata are from subjectdata and ydata)
meanindex2 <- sapply(meanindex, function(x) {x+2})
meanindex2
stdindex2 <- sapply(stdindex, function(x) {x+2})
stdindex2

#create total index and sort it
index2 <- c(1,2,meanindex2, stdindex2)
str(index2)
index2
index2 <- sort(index2)

#select columns using index
selectdata <- totaldata[,index2]
str(selectdata)
#V1 = subject number
#V1.1 = activity number (1 to 6)
#V1.2 = 1st mean variable
meanindex # variables with this number in the variable name are means
stdindex # variables with this number in the variable name are standard deviations (std's)

#Step 3
#Use descriptive activity names to name the activities in the data set
str(selectdata)
table(selectdata$V1.1)
selectdata$V1.1 <- factor(selectdata$V1.1,
                    levels = c(1,2,3,4,5,6),
                    labels = c("walking", "walkingupstairs", "walkingdownstairs",
                               "sitting", "standing", "laying"))
str(selectdata$V1.1)
table(selectdata$V1.1)
table(selectdata$V1.1, selectdata$V1)

#Step 4
#Appropriately label the data set with descriptive variable names
names(selectdata)
index2
featuresdata
str(index2)
str(featuresdata)

#Get variable names from featuresdata
meannames <- filter(featuresdata, V1 %in% meanindex)
meannames
stdnames <- filter(featuresdata, V1 %in% stdindex)
stdnames
totalnames <- rbind(meannames, stdnames)
totalnames
totalnames <- arrange(totalnames, V1)
totalnames
namesvector <- select(totalnames, V2)
namesvector
str(namesvector) #still a data frame here
namesvector <- as.character(namesvector$V2)
str(namesvector) #now a character vector
selectdata_old <- selectdata #make a copy, in case adding names messes up data frame

cleannames <- gsub("\\(\\)", "", namesvector)
cleannames

#Add names to data frame
names(selectdata) <- c("subjectid", "activity", cleannames)
names(selectdata)
str(selectdata)
View(selectdata)

#Step 5
#Create independent tidy data set with the average of each variable 
#for each activity and each subject

#make data long format
tidydata <- pivot_longer(selectdata, cols = 3:81, names_to = "variable", 
                         values_to = "value", values_drop_na = TRUE)
str(tidydata)
names(tidydata)

#group data
tidydata <- group_by(tidydata, subjectid)
tidydata <- group_by(tidydata, activity, .add=TRUE)
tidydata <- group_by(tidydata, variable, .add=TRUE)
str(tidydata)

#create means variable
tidydatalong <- summarize(tidydata, mean = mean(value))
str(tidydatalong)
View(tidydatalong)

tidydatawide <- pivot_wider(tidydatalong, names_from = variable, values_from = mean)
str(tidydatawide)
View(tidydatawide)
#reorder columns of tidy data according to features.text
tidydatawide <- tidydatawide[, c(1,2,42,43,44,45,46,47,74,75,76,77,78,79,
                                 48,49,50,51,52,53,58,59,60,61,62,63,
                                 64,65,66,67,68,69,56,57,80,81,54,55,72,73,
                                 70,71,3,4,5,9,10,11,6,7,8,12,13,14,18,19,20,
                                 15,16,17,33,34,35,39,40,41,36,37,38,21,23,22,
                                 24,26,25,30,32,31,27,29,28)]

#Export tidy data
write.table(tidydatawide, file = "./Course Project Getting and Cleaning Data/tidydatawide.txt")

#Read in tidy data in R
data <- read.table("./Course Project Getting and Cleaning Data/tidydatawide.txt", header = TRUE) 
View(data)

