CodeBook
--------
This is a short code book that describes the variables, the data, and transformations performed to clean up the data.

Datasource and information
--------------------------
The data represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Work and Transformation performed
---------------------------------
Zip file was downloaded and extracted separately.
It is expected to be extracted under C:\temp\UCI HAR DataSet

Program run_analysis.R was written and tested under RStudio Version 1.0.136 on windows
There are 5 parts:

- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement.
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive activity names.
- Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Requirements:
-------------
dplyr library is required

Description of the tidyAVG Set
------------------------------
 81  Variables      180  Observations
