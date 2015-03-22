# Merges the training and test sets to create one data set

# Get the list of files in each directory
test_files <- list.files("tidy_data/test", 
                         pattern = "*.txt", full.names = TRUE)
training_files <- list.files("tidy_data/train",
                             pattern = "*.txt", full.names = TRUE)

# Read those files into R
# Requires the stringr package
install.packages("stringr")
library(stringr)

# Make names for the data frams that match the original filenames
test_file_names <- str_sub(test_files, 16, -5)
train_file_names <- str_sub(training_files, 17, -5)

ldf_test <- lapply(test_files, read.table)
names(ldf_test) <- test_file_names

ldf_train <- lapply(training_files, read.table)
names(ldf_train) <- train_file_names

# Read in features
features <- read.table("tidy_data//features.txt")

# just take the second column
features <- features[ ,2]

# remove special characters
features <- str_replace_all(features, "[-(),]", "")

# Concatenate together into one data frame
merge_data_test <- data.frame(ldf_test[1], ldf_test[2], ldf_test[3])
names(merge_data_test) <- c("subject", features, "y")

merge_data_train <- data.frame(ldf_train[1], ldf_train[2], ldf_train[3])
names(merge_data_train) <- c("subject", features, "y")

merge_data <- rbind(merge_data_test, merge_data_train)

# Extracts only the measurements on the mean and 
# standard deviation for each measurement
col_names <- str_detect(names(merge_data), "mean|std")
col_names <- names(merge_data)[col_names]
col_names <- c("subject", col_names, "y")

extract_data <- merge_data[ , col_names]

# Uses descriptive activity names to name the activities in the data set

# Read in activity labels
activity <- read.table("tidy_data/activity_labels.txt")
names(activity) <- c("id", "name")
extract_data$activity <- activity$name[match(extract_data$y, activity$id)]

# Appropriately labels the data set with descriptive variable names
names(extract_data) <- c(names(extract_data)[1:80], 
                         "activity_code", "activity")

# From the data set in step 4, creates a second, independent tidy 
# data set with the average of each variable for each activity 
# and each subject.

# Requires the dplyr package
install.packages("dplyr")
library(dplyr)

# group the data by subject and activity
who <- group_by(extract_data, subject, activity)
tidy <- summarise_each(who, funs(mean))

# remove the activity code column
tidy <- tidy[ ,1:81]

# output the tidy data set
write.table(tidy, "tidy.txt", row.name = FALSE)
