##Course Project


##Reading Files
features <- read.table("./UCI HAR Dataset/features.txt")
x_Train <- read.table("./UCI HAR Dataset/train/X_train.txt", colClasses=rep("numeric",561))
x_Test <- read.table("./UCI HAR Dataset/test/X_test.txt", colClasses=rep("numeric",561))
subject_Train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
subject_Test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
y_Train <- read.table("./UCI HAR Dataset/train/y_train.txt")
y_Test <- read.table("./UCI HAR Dataset/test/y_test.txt")
activities <- read.table("./UCI HAR Dataset/activity_labels.txt")

##Begin building Table
Full <- rbind(x_Train,x_Test)
Subject <- rbind(subject_Train,subject_Test)
Activity <- rbind(y_Train,y_Test)

##Add Labels
names(Full) <- features[,2]
names(Subject) <- "Subject"
names(Activity) <- "ActivityID"

##Selecting only Mean() and Std() Columns
columns2Select <-grep("((mean()|std()){1}(freq){0,}[(][)])",names(Full))
Full <- Full[,columns2Select]
Full <- cbind(Subject, Activity, Full)


##Use Descriptive names for Activities
Full <- merge(Full,activities,by.x="ActivityID",by.y="V1",all=TRUE)

##Building Final table
Full <- cbind(Full[2],Full[69], Full[,3:68])
names(Full)[2] <-"Activity"

##Mini Final Data
SubjectActivityGrouping <- aggregate(Full[,3:68],list(Subject=Full$Subject, Activity=Full$Activity),mean)
write.table(SubjectActivityGrouping,"./tidyData.txt")
SubjectActivityGrouping
