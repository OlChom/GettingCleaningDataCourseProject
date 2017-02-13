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

activity                                        : Factor w/ 6 levels "LAYING","SITTING",..
subjectid                                       : int
timebodyaccelerometer.mean...x                  : num
timebodyaccelerometer.mean...y                  : num
timebodyaccelerometer.mean...z                  : num
timebodyaccelerometer.std...x                   : num
timebodyaccelerometer.std...y                   : num
timebodyaccelerometer.std...z                   : num
timegravityaccelerometer.mean...x               : num
timegravityaccelerometer.mean...y               : num
timegravityaccelerometer.mean...z               : num
timegravityaccelerometer.std...x                : num
timegravityaccelerometer.std...y                : num
timegravityaccelerometer.std...z                : num
timebodyaccelerometerjerk.mean...x              : num
timebodyaccelerometerjerk.mean...y              : num
timebodyaccelerometerjerk.mean...z              : num
timebodyaccelerometerjerk.std...x               : num
timebodyaccelerometerjerk.std...y               : num
timebodyaccelerometerjerk.std...z               : num
timebodygyroscope.mean...x                      : num
timebodygyroscope.mean...y                      : num
timebodygyroscope.mean...z                      : num
timebodygyroscope.std...x                       : num
timebodygyroscope.std...y                       : num
timebodygyroscope.std...z                       : num
timebodygyroscopejerk.mean...x                  : num
timebodygyroscopejerk.mean...y                  : num
timebodygyroscopejerk.mean...z                  : num
timebodygyroscopejerk.std...x                   : num
timebodygyroscopejerk.std...y                   : num
timebodygyroscopejerk.std...z                   : num
timebodyaccelerometermag.mean..                 : num
timebodyaccelerometermag.std..                  : num
timegravityaccelerometermag.mean..              : num
timegravityaccelerometermag.std..               : num
timebodyaccelerometerjerkmag.mean..             : num
timebodyaccelerometerjerkmag.std..              : num
timebodygyroscopemag.mean..                     : num
timebodygyroscopemag.std..                      : num
timebodygyroscopejerkmag.mean..                 : num
timebodygyroscopejerkmag.std..                  : num
frequencybodyaccelerometer.mean...x             : num
frequencybodyaccelerometer.mean...y             : num
frequencybodyaccelerometer.mean...z             : num
frequencybodyaccelerometer.std...x              : num
frequencybodyaccelerometer.std...y              : num
frequencybodyaccelerometer.std...z              : num
frequencybodyaccelerometer.meanfreq...x         : num
frequencybodyaccelerometer.meanfreq...y         : num
frequencybodyaccelerometer.meanfreq...z         : num
frequencybodyaccelerometerjerk.mean...x         : num
frequencybodyaccelerometerjerk.mean...y         : num
frequencybodyaccelerometerjerk.mean...z         : num
frequencybodyaccelerometerjerk.std...x          : num
frequencybodyaccelerometerjerk.std...y          : num
frequencybodyaccelerometerjerk.std...z          : num
frequencybodyaccelerometerjerk.meanfreq...x     : num
frequencybodyaccelerometerjerk.meanfreq...y     : num
frequencybodyaccelerometerjerk.meanfreq...z     : num
frequencybodygyroscope.mean...x                 : num
frequencybodygyroscope.mean...y                 : num
frequencybodygyroscope.mean...z                 : num
frequencybodygyroscope.std...x                  : num
frequencybodygyroscope.std...y                  : num
frequencybodygyroscope.std...z                  : num
frequencybodygyroscope.meanfreq...x             : num
frequencybodygyroscope.meanfreq...y             : num
frequencybodygyroscope.meanfreq...z             : num
frequencybodyaccelerometermag.mean..            : num
frequencybodyaccelerometermag.std..             : num
frequencybodyaccelerometermag.meanfreq..        : num
frequencybodybodyaccelerometerjerkmag.mean..    : num
frequencybodybodyaccelerometerjerkmag.std..     : num
frequencybodybodyaccelerometerjerkmag.meanfreq..: num
frequencybodybodygyroscopemag.mean..            : num
frequencybodybodygyroscopemag.std..             : num
frequencybodybodygyroscopemag.meanfreq..        : num
frequencybodybodygyroscopejerkmag.mean..        : num
frequencybodybodygyroscopejerkmag.std..         : num
frequencybodybodygyroscopejerkmag.meanfreq..    : num
