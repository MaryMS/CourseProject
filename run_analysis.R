### Course Project - Getting and Cleaning Data ###

# Reads X_test.txt, Y_test.txt, subject_test
X_test <- read.csv("./test/X_test.txt", header = F, sep = "")
Y_test <- read.csv("./test/Y_test.txt", header = F, sep = "")
subject_test <- read.csv("./test/subject_test.txt", header = F, sep = "")

# Reads X_train.txt, Y_train.txt, subject_train
X_train <- read.csv("./train/X_train.txt", header = F, sep = "")
Y_train <- read.csv("./train/Y_train.txt", header = F, sep = "")
subject_train <- read.csv("./train/subject_train.txt", header = F, sep = "")

# Reads features.txt
#activity_labels <- read.csv("./activity_labels.txt", header = F, sep = "", colClasses="character")
features <- read.csv("./features.txt", header = F, sep = "", colClasses="character")

# Renames the variables according to features.txt
names(X_test) <- features$V2

# Joins subject_test, Y_test, X_test
X_test$activity <- Y_test$V1
X_test$subject <- subject_test$V1
X_test <- data.frame(X_test[562], X_test[563], X_test[1:561])

# Renames the variables according to features.txt
names(X_train) <- features$V2

# Joins subject_train, Y_train, X_train
X_train$activity <- Y_train$V1
X_train$subject <- subject_train$V1
X_train <- data.frame(X_train[562], X_train[563], X_train[1:561])

#Joins the test and train datasets.
mergedData <- merge(X_test, X_train, all=TRUE)

# Selects the measurements on the mean and standard deviation for each measurement. 
measures <- c(1,2,3,4,5,6,41,42,43,44,45,46,81,82,83,84,85,86,121,122,123,124,125,126,161,162,163,164,165,166,201,202,214,215,227,228,240,241,253,254,266,267,268,269,270,271,294,295,296,345,346,347,348,349,350,424,425,426,427,428,429,503,504,516,517,529,530,542,543)
measures <- measures +2 #Add 2 because the 2 first columns are "subject" and "activity".
measures <- c(1,2,measures) #The dataset contains the column "activity", column "subject" and the mean/std measurements.

#Sets only the selected fields.
mergedData <- mergedData[measures]

#Replaces the field activity to the descriptive activity names.
for (i in 1:nrow(mergedData)) {
  mergedData$activity[i]<-switch(mergedData$activity[i], "1" = "WALKING", "2" = "WALKING_UPSTAIRS", "3" = "WALKING_DOWNSTAIRS", "4" = "SITTING", "5" = "STANDING", "6" = "LAYING")
}

#New dataset with the average of the variables for each activity/subject 
tidyData <- aggregate(cbind(mergedData[3:71]), by=list(mergedData$activity, mergedData$subject), FUN=mean)

# Loads the library dplyr to use the function rename.
library(dplyr)
#Renames the fields Group.1 and Group.1 to activity and subject.
tidyData <- rename(tidyData, activity = Group.1, subject= Group.2)

# Creates the text file with the tidy dataset.
write.table(tidyData,file="./tidyData.txt",row.names=FALSE,col.names=TRUE, sep=" ")