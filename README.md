Getting and Cleaning Data Module Coursera Data Science Johns Hopkins University			 

 				
Programming Project: Human Activity Recognition Using Smartphones			
By: Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto. Smartlab - Non Linear Complex Systems Laboratory DITEN - Universit‡ degli Studi di Genova. 
			

Data
TidyData.txt data file is the final output and is in text format (space seperated). 

Variables in the dataset are in each row for a given subject and activity. 

Source data sets used for transformations are located at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.


Following transformations were done on the source data sets:-

 1. Training and Test data sets  merged to create one data set.
 2. Measurements on the mean and standard deviation were extracted for each measurement.
 3. Activity coded as integers between 1 and 6 were replaced with descriptive activity names.
 4. Characters "," and "-" were removed from variable names.
 5. Appropriately labeled the data set with descriptive variable names.
 6. From the data set in step 4, created a second, independent tidy data set with the average of each variable for each activity and each subject.     



