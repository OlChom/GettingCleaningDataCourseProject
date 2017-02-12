## This script does the following ...

# Based on the UCI HAR dataset
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set
#    with the average of each variable for each activity and each subject.

# Expects to have the UCI HAR dataset extracted in C:\temp\UCI HAR DataSet
# Will create an output file with the 2nd data set at same level as UCI HAR Dataset folder

library(dplyr)

# Current Env.
curDir <- getwd()

# zip file was downloaded and extracted separately
# information taken from "UCI HAR Dataset names"
setwd("C:/temp/UCI HAR Dataset")

# Filepath for ...
# ... Features and Activity Labels
featuresLabel_File         <- "./features.txt"
activityLabel_File         <- "./activity_labels.txt"
# ... Training Set
trainingSubject_File  <- "./train/subject_train.txt"
trainingSet_File      <- "./train/X_train.txt"
trainingLabel_File    <- "./train/y_train.txt"
# ... Test Set
testSubject_File      <- "./test/subject_test.txt"
testSet_File          <- "./test/X_test.txt"
testLabel_File        <- "./test/y_test.txt"

out_File               <- "../myTidyAVG.csv"

# Load them all ...
# featuresLabel is the names of the columns for both training and test sets
featuresLabel   <- read.table(featuresLabel_File, header=FALSE, col.name=c("var","varDesc"))

# activityLabel is the Label for activities (so basically descriptiopn for 2nd column
# of trainingLabel and testLabel below)
activityLabel   <- read.table(activityLabel_File, header=FALSE, col.name=c("activityID","activity"))

trainingSubject <- read.table(trainingSubject_File, header=FALSE, col.name="subjectID")
trainingSet     <- read.table(trainingSet_File, header=FALSE, col.name=featuresLabel[,"varDesc"])
trainingLabel   <- read.table(trainingLabel_File, header=FALSE, col.name="activityID")
testSubject     <- read.table(testSubject_File, header=FALSE, col.name="subjectID")
testSet         <- read.table(testSet_File, header=FALSE, col.name=featuresLabel[,"varDesc"])
testLabel       <- read.table(testLabel_File, header=FALSE, col.name="activityID")

# Prepare each set separately then put it all together

# #3 Uses descriptive activity names to name the activity in the data set
# will be integrated when created the tidy data set in #1 below
trainingLabel <- mutate(trainingLabel, activity = activityLabel[trainingLabel$activityID,"activity"])
testLabel     <- mutate(testLabel, activity = activityLabel[testLabel$activityID,"activity"])

# Add Source Identifier so that even when merged together I can still get to one set or another
# not really needed here but hey ... that's what I normally do :)
trainingSet$source <- "TRAINING"
testSet$source     <- "TEST"

# Remove unneeded columns
trainingLabel$activityID <- NULL
testLabel$activityID <- NULL

# Column bind subject, label and set on each set -> 2 clean independent sets of data
# Row bind both clean set -> 1 clean set
# #1 Merges training and test sets into one
tidytraining  <- cbind(trainingSubject, trainingLabel, trainingSet)
tidytest      <- cbind(testSubject, testLabel, testSet)
tidyall       <- rbind(tidytraining, tidytest)

# #2 only keeping mean() and std() measurements in addition to subjectID and activity
# there are probably lots of other mean and std measurements in the data sets however I could not dedicate enough time to find them all ...
# and would take me too much time to figure it out completely for this PA ... sorry ...
columns2keep <- c("subjectID", "activity", grep("(mean|std)", names(tidyall), value=TRUE))
tidymeanstd <- tidyall[,columns2keep]

# #4 Re-label with more descriptive variable names
# Same comment here ... too many thing to change to make really full sense out of it
# Sorry but I also have a job and a family ... Thank you for your understanding :)
# all lowercase
# ^t -> time
# ^f -> frequency
# Acc -> accelerometer
# Gyro -> gyroscope
# -mean -> mean
# -std -> standard
# ... to complete in another life ...
names(tidymeanstd) <- tolower(names(tidymeanstd))
names(tidymeanstd)<-gsub("^t", "time", names(tidymeanstd))
names(tidymeanstd)<-gsub("^f", "frequency", names(tidymeanstd))
names(tidymeanstd)<-gsub("acc", "accelerometer", names(tidymeanstd))
names(tidymeanstd)<-gsub("gyro", "gyroscope", names(tidymeanstd))
names(tidymeanstd)<-gsub("-mean", "mean", names(tidymeanstd))
names(tidymeanstd)<-gsub("-std", "standard", names(tidymeanstd))

# #5 creates a 2nd independent data set with the average of each variable
# for each activity and each subject

tidyAVG <- tidymeanstd %>%
  group_by(activity, subjectid) %>%
  summarize_each(funs(mean))

# Spit out file to upload in GitHub
write.table(tidyAVG,out_File, sep=",", row.names = FALSE)

# Return to original Env.
setwd(curDir)
