PURPOSE OF THE ASSIGNMENT
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 
1) a tidy data set as described below
2) a link to a Github repository with your script for performing the analysis
3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. 
4) You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

METADATA
One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

There are several text files. The X files (HA! I couldn't resist.), x_test.txt and x_train.txt do not have labels; whereas, the Y files, y_test.txt and y_train.txt do. The label names can also be found in the activity_labels.txt file. Subjects are in the subject_test.txt file and features are listed in the features.txt file. (I am not sure why I have to explain that, but one must not wonder what other coders might think.)

SCRIPT and DATASET
You should create one R script called run_analysis.R that does the following. 
1) Merges the training and the test sets to create one data set, which is in a directory called "UCI HAR Dataset". Labels are added.
2) Extracts only the measurements on the mean and standard deviation for each measurement. All other columns have been dropped. 
3) Uses descriptive activity names to name the activities in the data set
4) Appropriately labels the data set with descriptive variable names. 
5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. This file is called tidy.txt.

CODEBOOK
The CodeBook.md file contains additional information regarding the transformation and the resulting data.

CREDITS
Thanks to Ben Poweski, James Sanders, Mauro Taraborelli, Marek Loderer, Sally Zhang and Sefa Kilic for helping me understand the assignment, pylr and the best way to do the programming.