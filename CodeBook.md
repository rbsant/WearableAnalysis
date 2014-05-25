| names.tidyDataset.                |   |   |   |   |
|-----------------------------------|---|---|---|---|
| subjectid                         |   |   |   |   |
| activity                          |   |   |   |   |
| tBodyAccmeanX                     |   |   |   |   |
| tBodyAccmeanY                     |   |   |   |   |
| tBodyAccmeanZ                     |   |   |   |   |
| tBodyAccstdX                      |   |   |   |   |
| tBodyAccstdY                      |   |   |   |   |
| tBodyAccstdZ                      |   |   |   |   |
| tGravityAccmeanX                  |   |   |   |   |
| tGravityAccmeanY                  |   |   |   |   |
| tGravityAccmeanZ                  |   |   |   |   |
| tGravityAccstdX                   |   |   |   |   |
| tGravityAccstdY                   |   |   |   |   |
| tGravityAccstdZ                   |   |   |   |   |
| tBodyAccJerkmeanX                 |   |   |   |   |
| tBodyAccJerkmeanY                 |   |   |   |   |
| tBodyAccJerkmeanZ                 |   |   |   |   |
| tBodyAccJerkstdX                  |   |   |   |   |
| tBodyAccJerkstdY                  |   |   |   |   |
| tBodyAccJerkstdZ                  |   |   |   |   |
| tBodyGyromeanX                    |   |   |   |   |
| tBodyGyromeanY                    |   |   |   |   |
| tBodyGyromeanZ                    |   |   |   |   |
| tBodyGyrostdX                     |   |   |   |   |
| tBodyGyrostdY                     |   |   |   |   |
| tBodyGyrostdZ                     |   |   |   |   |
| tBodyGyroJerkmeanX                |   |   |   |   |
| tBodyGyroJerkmeanY                |   |   |   |   |
| tBodyGyroJerkmeanZ                |   |   |   |   |
| tBodyGyroJerkstdX                 |   |   |   |   |
| tBodyGyroJerkstdY                 |   |   |   |   |
| tBodyGyroJerkstdZ                 |   |   |   |   |
| tBodyAccMagmean                   |   |   |   |   |
| tBodyAccMagstd                    |   |   |   |   |
| tGravityAccMagmean                |   |   |   |   |
| tGravityAccMagstd                 |   |   |   |   |
| tBodyAccJerkMagmean               |   |   |   |   |
| tBodyAccJerkMagstd                |   |   |   |   |
| tBodyGyroMagmean                  |   |   |   |   |
| tBodyGyroMagstd                   |   |   |   |   |
| tBodyGyroJerkMagmean              |   |   |   |   |
| tBodyGyroJerkMagstd               |   |   |   |   |
| fBodyAccmeanX                     |   |   |   |   |
| fBodyAccmeanY                     |   |   |   |   |
| fBodyAccmeanZ                     |   |   |   |   |
| fBodyAccstdX                      |   |   |   |   |
| fBodyAccstdY                      |   |   |   |   |
| fBodyAccstdZ                      |   |   |   |   |
| fBodyAccmeanFreqX                 |   |   |   |   |
| fBodyAccmeanFreqY                 |   |   |   |   |
| fBodyAccmeanFreqZ                 |   |   |   |   |
| fBodyAccJerkmeanX                 |   |   |   |   |
| fBodyAccJerkmeanY                 |   |   |   |   |
| fBodyAccJerkmeanZ                 |   |   |   |   |
| fBodyAccJerkstdX                  |   |   |   |   |
| fBodyAccJerkstdY                  |   |   |   |   |
| fBodyAccJerkstdZ                  |   |   |   |   |
| fBodyAccJerkmeanFreqX             |   |   |   |   |
| fBodyAccJerkmeanFreqY             |   |   |   |   |
| fBodyAccJerkmeanFreqZ             |   |   |   |   |
| fBodyGyromeanX                    |   |   |   |   |
| fBodyGyromeanY                    |   |   |   |   |
| fBodyGyromeanZ                    |   |   |   |   |
| fBodyGyrostdX                     |   |   |   |   |
| fBodyGyrostdY                     |   |   |   |   |
| fBodyGyrostdZ                     |   |   |   |   |
| fBodyGyromeanFreqX                |   |   |   |   |
| fBodyGyromeanFreqY                |   |   |   |   |
| fBodyGyromeanFreqZ                |   |   |   |   |
| fBodyAccMagmean                   |   |   |   |   |
| fBodyAccMagstd                    |   |   |   |   |
| fBodyAccMagmeanFreq               |   |   |   |   |
| fBodyBodyAccJerkMagmean           |   |   |   |   |
| fBodyBodyAccJerkMagstd            |   |   |   |   |
| fBodyBodyAccJerkMagmeanFreq       |   |   |   |   |
| fBodyBodyGyroMagmean              |   |   |   |   |
| fBodyBodyGyroMagstd               |   |   |   |   |
| fBodyBodyGyroMagmeanFreq          |   |   |   |   |
| fBodyBodyGyroJerkMagmean          |   |   |   |   |
| fBodyBodyGyroJerkMagstd           |   |   |   |   |
| fBodyBodyGyroJerkMagmeanFreq      |   |   |   |   |
| angletBodyAccMeangravity          |   |   |   |   |
| angletBodyAccJerkMeangravityMean  |   |   |   |   |
| angletBodyGyroMeangravityMean     |   |   |   |   |
| angletBodyGyroJerkMeangravityMean |   |   |   |   |
| angleXgravityMean                 |   |   |   |   |
| angleYgravityMean                 |   |   |   |   |
| angleZgravityMean                 |   |   |   |   |



LOADING DATA
#raw data
xtest  (X_test.txt)
xtrain (X_train.txt)

#columns mapping
features ("features.txt")

#row mapping per activity
activity.labels  ("activity_labels.txt")
activity.id.xtest ("y_test.txt")
activity.id.xtrain ("y_train.txt")

#row mapping per user
subject.test  ("subject_test.txt")
subject.train ("subject_train.txt")

#applying names to columns
names(xtest) <- features$V2
names(xtrain) <- features$V2



TRANSFORMATIONS
#merge activity ids and labels
activity.xtest <- merge: activity.labels, activity.id.xtest, 
activity.xtrain <- merge: activity.labels, activity.id.xtrain,

#add activitty columns (id and labels) to main data
xtest <- activity.xtest
xtrain <- activity.xtrain


#add subject columm
xtest <- subject.test$V1
xtrain <- subject.train$V1


#Merges the training and the test sets to create one data set.
dataset <- (xtest,xtrain)


#Extracts only the measurements on the mean and standard deviation for each measurement. 
dataset.ms <- grep("[Mm]ean|[Ss]td",n)


#Appropriately labels the data set with descriptive activity names. 
names(dataset.ms) <- gsub("-","", names(dataset.ms))
names(dataset.ms) <- gsub("\\(|\\)","", names(dataset.ms))
names(dataset.ms) <- gsub(",","", names(dataset.ms))


#Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
tidyDataset <-  aggregate by subjectid and activity and calculat the mean


OUTPUT
#write data to disk
write.table
