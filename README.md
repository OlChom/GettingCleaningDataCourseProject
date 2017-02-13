# GettingCleaningDataCourseProject
The purpose of this project is to demonstrate our ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.
Following was done in order to transform the initial data set.
Merging of the test and train data sets and the subject identifiers and activity labels were added in the single data set.
The variables were converted into more human-readable names.
Only the mean and standard deviation variables were kept and summarized by taking their mean for each activity and subject.

run_analysis.R expects the source data set (as described in the codebook) to be available (unzipped) under C:\temp\UCI HAR Dataset
This program will create a small tidy set.
The tidy data set will be in the myTidyAVG.txt file.
