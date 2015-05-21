
### Download the folder into the working directory
if(!file.exists("./project")){dir.create("./project")}
fileUrl <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip?accessType=DOWNLOAD"
download.file(fileUrl,destfile="./project/data.zip")

###  Unzip the folder
unzip("./project/getdata-projectfiles-UCI HAR Dataset.zip")
setwd("./getdata-projectfiles-UCI HAR Dataset")

####  Read in the test and training sets, their subjects and their labels
testdata <- read.table("./UCI HAR Dataset/test/X_test.txt")
testlabels <- read.table("./UCI HAR Dataset/test/y_test.txt")
testsubject <- read.table("./UCI HAR Dataset/test/subject_test.txt")
traindata <- read.table("./UCI HAR Dataset/train/X_train.txt")
trainlabels <- read.table("./UCI HAR Dataset/train/y_train.txt")
trainsubject <- read.table("./UCI HAR Dataset/train/subject_train.txt")
features <- read.table("./UCI HAR Dataset/features.txt")

####  merge the data
####  cbind **subject and **labels on to **data
####  rbind test and train together 
testwide <- cbind(testdata,testlabels,testsubject)
trainwide <- cbind(traindata,trainlabels,trainsubject)
wide <- rbind(trainwide,testwide)

#### Find the features with  characters 'mean','Mean' or 'std'
Meanfeat <- grep("Mean", features$V2) # These do not really seem to be means
                                      ## so I left them out
meanfeat <- grep("mean", features$V2)
stdfeat <- grep("std",fetures$V2)
#### sort out the columns we want   
columns <- c(stdfeat,meanfeat)
columns <- sort(columns)
widecols <- wide[,columns]
widecols <- cbind(wide[,562],wide[,563],widecols)
#### find the variable names for remaining variables adding in subject and activity
featnames <- as.character(features[columns,2])
featnames <- c("activity","subject", featnames)
#### name the variables(columns) in the dataframe
names(widecols) <- featnames
####  Turn activity and subject into factors, labelling the activities
widecols$activity <- factor(widecols$activity,labels=c("walking",
                                           "walking_upstairs", 
                                           "walking_downstairs",
                                           "sitting", 
                                           "standing", 
                                           "laying"))
widecols$subject <- factor(widecols$subject)
####  produces the desired summary dataset
tidy <-widecols %.% group_by(activity, subject) %.% summarise_each(funs(sum))
####  writes the output file "tidy.txt" in the working directory
write.table(tidy, "./tidy.txt",row.name=FALSE)


