---
title: "README.md"
author: "Lauren Fitch"
date: "Sunday, March 22, 2015"
output: html_document
---

I started by getting the list of files in the test and train directories.
```{r}
test_files <- list.files("tidy_data/test", 
                         pattern = "*.txt", full.names = TRUE)
training_files <- list.files("tidy_data/train",
                             pattern = "*.txt", full.names = TRUE)
```

Then I read those files into R, which required the stringr package.
```{r}
install.packages("stringr")
library(stringr)
```
I made names for the data frames that match the original filenames.
```{r}
test_file_names <- str_sub(test_files, 16, -5)
train_file_names <- str_sub(training_files, 17, -5)

ldf_test <- lapply(test_files, read.table)
names(ldf_test) <- test_file_names

ldf_train <- lapply(training_files, read.table)
names(ldf_train) <- train_file_names
```
Read in features
```{r}
features <- read.table("tidy_data//features.txt")
```
Just take the second column
```{r}
features <- features[ ,2]
```
Remove special characters
```{r}
features <- str_replace_all(features, "[-(),]", "")
```
Concatenate together into one data frame
```{r}
merge_data_test <- data.frame(ldf_test[1], ldf_test[2], ldf_test[3])
names(merge_data_test) <- c("subject", features, "y")

merge_data_train <- data.frame(ldf_train[1], ldf_train[2], ldf_train[3])
names(merge_data_train) <- c("subject", features, "y")

merge_data <- rbind(merge_data_test, merge_data_train)
```
Extracts only the measurements on the mean and standard deviation for each measurement. I looked for either "mean" or "std" in the variable name. I did not remove any variables from the resulting list.
```{r}
col_names <- str_detect(names(merge_data), "mean|std")
col_names <- names(merge_data)[col_names]
col_names <- c("subject", col_names, "y")

extract_data <- merge_data[ , col_names]
```
I use descriptive activity names to name the activities in the data set, by reading in activity labels and matching them to the right row.
```{r}
activity <- read.table("tidy_data/activity_labels.txt")
names(activity) <- c("id", "name")
extract_data$activity <- activity$name[match(extract_data$y, activity$id)]
```
I labeled the data set with descriptive variable names
```{r}
names(extract_data) <- c(names(extract_data)[1:80], 
                         "activity_code", "activity")
```
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Requires the dplyr package.
```{r}
install.packages("dplyr")
library(dplyr)
```
Group the data by subject and activity
```{r}
who <- group_by(extract_data, subject, activity)
tidy <- summarise_each(who, funs(mean))
```
Remove the activity code column
```{r}
tidy <- tidy[ ,1:81]
```
Output the tidy data set
```{r}
write.table(tidy, "tidy.txt", row.name = FALSE)
```