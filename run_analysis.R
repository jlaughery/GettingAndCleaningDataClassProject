##Download the Zip file and unzip 
if (!file.exists("UCI HAR Dataset.zip")) {
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "UCI HAR Dataset.zip" )
}

unzip("UCI HAR Dataset.zip", overwrite=TRUE)     


##Create  Lookup Tables
activity <- read.table("./UCI HAR Dataset/activity_labels.txt", stringsAsFactors=FALSE, col.names=c("ActivityCode", "Activity"))
features <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors=FALSE)


##-------------------------------------------------------------------------------
##  Step 1 Read and Merge the training and test datasets and 
##  Step 3 Apply Descriptive Names to the Activity 
##-------------------------------------------------------------------------------

## Read in the Test Data Files and merge the Activity Descriptions
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", col.names="Subject")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", col.names="ActivityCode")
y_testFinal <- merge(y_test, activity, by.x="ActivityCode", by.y="ActivityCode", sort=FALSE)
x_test <- read.table("./UCI HAR Dataset/test/x_test.txt", col.names=features[,2])


## Combine the 3 test data frames into a single test data frame
SubtjectActivityTest <- cbind(subject_test, y_testFinal[,2])
colnames(SubtjectActivityTest)[2] <- "Activity"
test <- cbind(SubtjectActivityTest, x_test)


## Read in the Train Data Files and merge the Activity Descriptions
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", col.names="Subject")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", col.names="ActivityCode")
y_trainFinal <- merge(y_train, activity, by.x="ActivityCode", by.y="ActivityCode", sort=FALSE)
x_train <- read.table("./UCI HAR Dataset/train/x_train.txt", col.names=features[,2])


## Combine the 3 test data frames into a single test data frame
SubtjectActivityTrain <- cbind(subject_train, y_trainFinal[,2])
colnames(SubtjectActivityTrain)[2] <- "Activity"
train <- cbind(SubtjectActivityTrain, x_train)


## Combine test and train
RawData <- rbind(test, train)
RawData$Subject <- as.factor(RawData$Subject)


##-------------------------------------------------------------------------------
## Step 2:  Extract only the measurements of mean and standard deviation
##------------------------------------------------------------------------------

##Define the regular expression strings to search for
ptn1 <- 'mean\\(\\)|std\\(\\)'


##Search the column header file (features.txt) for the index of the columns matchng the
##regular expressions
ndx1 = grep(ptn1, as.vector(features[,2]))


##Create a vector of column indexes to include
##     1 = Subject
##     2 = Activity
##     3 - 68 = features that include mean() and std()
ndx <- c(1, 2, ndx1 + 2)


##Select only the columns needed from RawData
DetailData <- data.frame(RawData[, ndx])


##-------------------------------------------------------------------------------
## Step 4 Appropiately Label the dataset with descriptive variable names
##-------------------------------------------------------------------------------

##Create a list of the current column headings
val1 = grep(ptn1, as.vector(features[,2]), value=TRUE)
val <- c("Subject", "Activity", val1)

##Replace - with a period and remove () from the column headings
val[] <- gsub("-", ".", val[])
val[] <- gsub("\\(", "", val[])
val[] <- gsub("\\)", "", val[])

##Assign the tidy column headings
colnames(DetailData) <-  val


##-------------------------------------------------------------------------------
## Step 5 Create a second tidy datset with the mean of each variable by subject 
##        and Activity
##-------------------------------------------------------------------------------

##Calculate the means for each measurement column
tidydataset <- aggregate(DetailData[,3:68], list(DetailData$Subject, DetailData$Activity), mean)

##Rename the Column Headings.  Prefix all aggregated columns with "Avg."
##Set Col 1 to "Subject"
##Set Col 2 to "Activity"
colnames(tidydataset) <- paste("Avg", colnames(tidydataset), sep=".")
names(tidydataset)[1] <- "Subject"
names(tidydataset)[2] <- "Activity"

##-------------------------------------------------------------------------------
## Output the data set to a file
##-------------------------------------------------------------------------------

##Output the dataset to a csv file
write.table(tidydataset, file="TidyDataSet.txt", row.names=FALSE, col.names=TRUE, sep=',')
