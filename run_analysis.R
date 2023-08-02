## reading training data sets
X_train <- read.table("C:/Users/manit/Documents/1.Coursera/2. John Hopkins Data Science/3. Cleaning Data/data/train/X_train.txt")
y_train <- read.table("C:/Users/manit/Documents/1.Coursera/2. John Hopkins Data Science/3. Cleaning Data/data/train/y_train.txt")
subject_train <- read.table("C:/Users/manit/Documents/1.Coursera/2. John Hopkins Data Science/3. Cleaning Data/data/train/subject_train.txt")

## reading test data sets
X_test <- read.table("C:/Users/manit/Documents/1.Coursera/2. John Hopkins Data Science/3. Cleaning Data/data/test/X_test.txt")
y_test <- read.table("C:/Users/manit/Documents/1.Coursera/2. John Hopkins Data Science/3. Cleaning Data/data/test/y_test.txt")
subject_test <- read.table("C:/Users/manit/Documents/1.Coursera/2. John Hopkins Data Science/3. Cleaning Data/data/test/subject_test.txt")

## reading features data set
features <- read.table("C:/Users/manit/Documents/1.Coursera/2. John Hopkins Data Science/3. Cleaning Data/data/features.txt")


## Merging data sets
mergedSets <- rbind(X_train, X_test)
mergedSets$labels <- rbind(y_train, y_test)
mergedSets$subjects <- rbind(subject_train, subject_test)

#Assigning column names
colnames(mergedSets) <- features$V2


df2 <- mergedSets[,grepl("mean()|std()", names(mergedSets))]
df2 <- cbind(subjects = rbind(subject_train, subject_test), labels = rbind(y_train, y_test), df2)
colnames(df2)[1]<-"subject"
colnames(df2)[2]<-"activity"

#Reading activities
activity_names <- read.table("C:/Users/manit/Documents/1.Coursera/2. John Hopkins Data Science/3. Cleaning Data/data/activity_labels.txt")

#Looking up activities
library(qdapTools)
df2[,2] <- lookup(df2[,2], activity_names, key.reassign = NULL,missing = NA)


## Writing the cleaned data set in text file
write.table(df2,"C:/Users/manit/Documents/1.Coursera/2. John Hopkins Data Science/3. Cleaning Data/data/tidy-data.txt", row.name=FALSE)





