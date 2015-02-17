# Set working directory
setwd("UCI HAR Dataset/")

# Load training data
training = read.csv("train/X_train.txt", sep="", header=FALSE)
#appending Activity (from Y_train) and Subject (from subject_train)
training[,562] = read.csv("train/Y_train.txt", sep="", header=FALSE)
training[,563] = read.csv("train/subject_train.txt", sep="", header=FALSE)

# Load testing data
testing = read.csv("test/X_test.txt", sep="", header=FALSE)
testing[,562] = read.csv("test/Y_test.txt", sep="", header=FALSE)
testing[,563] = read.csv("test/subject_test.txt", sep="", header=FALSE)

mergedData = rbind(training, testing)

# Load and select features with names containing mean or std
features = read.csv("features.txt", sep="", header=FALSE)
# Change class of V2 to character
features[,2] = gsub('', '', features[,2])
selectedFeatureColumns <- grep(".*Mean.*|.*Std.*",ignore.case = TRUE, features[,2])

# Select only features mean and std
selectedFeatures <- features[selectedFeatureColumns,]

# Add two new columns
selectedFeatureColumns <- c(selectedFeatureColumns, 562, 563)

# Select required data
mergedData <- mergedData[,selectedFeatureColumns]

# Join data with labels (562 == "Activity" and 563 == "Subject")
colnames(mergedData) <- c(selectedFeatures$V2, "Activity", "Subject")

# Compute tidy data set w/ the average of each variable for each activity and each subject
tidy<-aggregate(mergedData[,1:ncol(mergedData)],list(Subject=mergedData$Subject, Activity=mergedData$Activity), mean)
tidy<-tidy[order(tidy$Subject),]

# Load activity labels
activity_labels<-read.table("activity_labels.txt")["V2"]
tidy$Activity<-activity_labels[tidy$Activity, ]

# Drop the no longer useful last two columns Activity.1 and Subject.1
tidy[,89] = NULL
tidy[,89] = NULL

tidy<-tidy[order(tidy$Activity),]

# Save the results to a text file
setwd("../")
write.table(tidy, "tidy.txt", row.name=FALSE, sep="\t")
