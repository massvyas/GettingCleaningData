# Imports required data into variables

subjectTest<- read.table("./samsungdata/UCI HAR Dataset/test/subject_test.txt")
xTest<- read.table("./samsungdata/UCI HAR Dataset/test/X_test.txt")
yTest<- read.table("./samsungdata/UCI HAR Dataset/test/y_test.txt")
subjectTrain<- read.table("./samsungdata/UCI HAR Dataset/train/subject_train.txt")
xTrain<- read.table("./samsungdata/UCI HAR Dataset/train/X_train.txt")
yTrain<- read.table("./samsungdata/UCI HAR Dataset/train/y_train.txt")
features<- read.table("./samsungdata/UCI HAR Dataset/features.txt")
activityLabels<- read.table("./samsungdata/UCI HAR Dataset/activity_labels.txt")


# Assigns column names to the variables

colnames(subjectTest) <- "subjectID"
colnames(subjectTrain) <- "subjectID"
colnames(yTest) <- "activityID"
colnames(yTrain) <- "activityID"
colnames(xTest)<-features$V2
colnames(xTrain)<-features$V2
colnames(activityLabels)<-c("id","label")



# Combines test and train data into one combined dataset

test<-cbind(subjectTest, yTest, xTest)
train<-cbind(subjectTrain, yTrain, xTrain)
combined<-rbind(test,train)



# Extracts the required measures (mean and standard deviation) from the dataset

measures<-c("mean()", "std()")
reqdCols<-c(1,2)
for(i in 1:nrow(features)){
  if(grepl(measures[1],features[i,2],fixed=TRUE) || grepl(measures[2],features[i,2],fixed=TRUE)){
    reqdCols<-c(reqdCols,i+2)
  }
}
extMeanStd<-combined[,reqdCols]


# Assigns activity labels to the data

merged<-merge(extMeanStd,activityLabels, by.x = "activityID", by.y = "id",all=TRUE)



# Calculates the average for each measure for each subjectID and activityLabel

averages<-aggregate(merged[,3:68],by=list(merged$subjectID, merged$label), FUN=function(x) mean(as.numeric(as.character(x))))
setnames(averages,"Group.1", "subjectID")
setnames(averages,"Group.2", "activityLabel")

write.table(averages, file = "./samsungdata/averages.txt", sep = ",",
            eol = "\n", na = "NA", dec = ".", row.names = FALSE,col.names = TRUE)