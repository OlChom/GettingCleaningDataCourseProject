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

 [1] "activity"                                        
 [2] "subjectid"                                       
 [3] "timebodyaccelerometer.mean...x"                  
 [4] "timebodyaccelerometer.mean...y"                  
 [5] "timebodyaccelerometer.mean...z"                  
 [6] "timebodyaccelerometer.std...x"                   
 [7] "timebodyaccelerometer.std...y"                   
 [8] "timebodyaccelerometer.std...z"                   
 [9] "timegravityaccelerometer.mean...x"               
[10] "timegravityaccelerometer.mean...y"               
[11] "timegravityaccelerometer.mean...z"               
[12] "timegravityaccelerometer.std...x"                
[13] "timegravityaccelerometer.std...y"                
[14] "timegravityaccelerometer.std...z"                
[15] "timebodyaccelerometerjerk.mean...x"              
[16] "timebodyaccelerometerjerk.mean...y"              
[17] "timebodyaccelerometerjerk.mean...z"              
[18] "timebodyaccelerometerjerk.std...x"               
[19] "timebodyaccelerometerjerk.std...y"               
[20] "timebodyaccelerometerjerk.std...z"               
[21] "timebodygyroscope.mean...x"                      
[22] "timebodygyroscope.mean...y"                      
[23] "timebodygyroscope.mean...z"                      
[24] "timebodygyroscope.std...x"                       
[25] "timebodygyroscope.std...y"                       
[26] "timebodygyroscope.std...z"                       
[27] "timebodygyroscopejerk.mean...x"                  
[28] "timebodygyroscopejerk.mean...y"                  
[29] "timebodygyroscopejerk.mean...z"                  
[30] "timebodygyroscopejerk.std...x"                   
[31] "timebodygyroscopejerk.std...y"                   
[32] "timebodygyroscopejerk.std...z"                   
[33] "timebodyaccelerometermag.mean.."                 
[34] "timebodyaccelerometermag.std.."                  
[35] "timegravityaccelerometermag.mean.."              
[36] "timegravityaccelerometermag.std.."               
[37] "timebodyaccelerometerjerkmag.mean.."             
[38] "timebodyaccelerometerjerkmag.std.."              
[39] "timebodygyroscopemag.mean.."                     
[40] "timebodygyroscopemag.std.."                      
[41] "timebodygyroscopejerkmag.mean.."                 
[42] "timebodygyroscopejerkmag.std.."                  
[43] "frequencybodyaccelerometer.mean...x"             
[44] "frequencybodyaccelerometer.mean...y"             
[45] "frequencybodyaccelerometer.mean...z"             
[46] "frequencybodyaccelerometer.std...x"              
[47] "frequencybodyaccelerometer.std...y"              
[48] "frequencybodyaccelerometer.std...z"              
[49] "frequencybodyaccelerometer.meanfreq...x"         
[50] "frequencybodyaccelerometer.meanfreq...y"         
[51] "frequencybodyaccelerometer.meanfreq...z"         
[52] "frequencybodyaccelerometerjerk.mean...x"         
[53] "frequencybodyaccelerometerjerk.mean...y"         
[54] "frequencybodyaccelerometerjerk.mean...z"         
[55] "frequencybodyaccelerometerjerk.std...x"          
[56] "frequencybodyaccelerometerjerk.std...y"          
[57] "frequencybodyaccelerometerjerk.std...z"          
[58] "frequencybodyaccelerometerjerk.meanfreq...x"     
[59] "frequencybodyaccelerometerjerk.meanfreq...y"     
[60] "frequencybodyaccelerometerjerk.meanfreq...z"     
[61] "frequencybodygyroscope.mean...x"                 
[62] "frequencybodygyroscope.mean...y"                 
[63] "frequencybodygyroscope.mean...z"                 
[64] "frequencybodygyroscope.std...x"                  
[65] "frequencybodygyroscope.std...y"                  
[66] "frequencybodygyroscope.std...z"                  
[67] "frequencybodygyroscope.meanfreq...x"             
[68] "frequencybodygyroscope.meanfreq...y"             
[69] "frequencybodygyroscope.meanfreq...z"             
[70] "frequencybodyaccelerometermag.mean.."            
[71] "frequencybodyaccelerometermag.std.."             
[72] "frequencybodyaccelerometermag.meanfreq.."        
[73] "frequencybodybodyaccelerometerjerkmag.mean.."    
[74] "frequencybodybodyaccelerometerjerkmag.std.."     
[75] "frequencybodybodyaccelerometerjerkmag.meanfreq.."
[76] "frequencybodybodygyroscopemag.mean.."            
[77] "frequencybodybodygyroscopemag.std.."             
[78] "frequencybodybodygyroscopemag.meanfreq.."        
[79] "frequencybodybodygyroscopejerkmag.mean.."        
[80] "frequencybodybodygyroscopejerkmag.std.."         
[81] "frequencybodybodygyroscopejerkmag.meanfreq.."    
