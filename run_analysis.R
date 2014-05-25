
#data
xtest <- read.table("X_test.txt", header=FALSE)
xtrain <- read.table("X_train.txt", header=FALSE)

#columns mapping
features <- read.table("features.txt", header=FALSE, stringsAsFactors = FALSE)

#row mapping per activity
activity.labels  <- read.table("activity_labels.txt", header=FALSE, stringsAsFactors = FALSE)
activity.id.xtest <- read.table("y_test.txt", header=FALSE, stringsAsFactors = FALSE)
activity.id.xtrain <- read.table("y_train.txt", header=FALSE, stringsAsFactors = FALSE)

#row mapping per user
subject.test  <- read.table("subject_test.txt", header=FALSE, stringsAsFactors = FALSE)
subject.train <- read.table("subject_train.txt", header=FALSE, stringsAsFactors = FALSE)

#applying names to columns
names(xtest) <- features$V2
names(xtrain) <- features$V2

#merge activity ids and labels
activity.xtest <- merge(activity.labels, activity.id.xtest, by="V1",all=TRUE)
activity.xtrain <- merge(activity.labels, activity.id.xtrain, by="V1",all=TRUE)

#add activitty columns (id and labels) to main data
xtest <- cbind(activity.xtest, xtest)
colnames(xtest)[1] <- "activityid"
colnames(xtest)[2] <- "activity"
xtrain <- cbind(activity.xtrain, xtrain)
colnames(xtrain)[1] <- "activityid"
colnames(xtrain)[2] <- "activity"

#add subject columm
xtest <- cbind(subject.test$V1, xtest)
colnames(xtest)[1] <- "subjectid"
xtrain <- cbind(subject.train$V1, xtrain)
colnames(xtrain)[1] <- "subjectid"




##1.Merges the training and the test sets to create one data set.
dataset <- rbind(xtest,xtrain)


#2.Extracts only the measurements on the mean and standard deviation for each measurement. 
dataset.ms <- cbind(dataset$subjectid,dataset$activity, dataset[,grep("[Mm]ean|[Ss]td",names(dataset))])



#3.Uses descriptive activity names to name the activities in the data set
colnames(dataset.ms)[1] <- "subjectid"
colnames(dataset.ms)[2] <- "activity"


#4.Appropriately labels the data set with descriptive activity names. 
names(dataset.ms) <- gsub("-","", names(dataset.ms))
names(dataset.ms) <- gsub("\\(|\\)","", names(dataset.ms))
names(dataset.ms) <- gsub(",","", names(dataset.ms))


#5.Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
library(reshape2)
df_melt <- melt(dataset.ms, id = c("subjectid","activity"))
tidyDataset <- dcast(df_melt, subjectid + activity ~ variable, mean)


write.table(tidyDataset, file="tidyDataset.txt")










