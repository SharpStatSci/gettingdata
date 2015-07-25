####################################################################
# Class 3 Getting and Cleaning Data Course Project, Jesse Sharp
# Due on July 26
## run_analysis.R
# Demonstrate data cleaning ability
# 1. Create Tidy dataset
# 2. Link to Github repo with analysis script
# 3. Codebook in markdown and a README should also be in the repo
# Dataset: UCI_HAR test+train files originally from
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# now in /GetData/UCI_HARdata
# A. Merge test and train
# B. Extract only mean and standard deviation for each measure
# C. Add descriptive variable names, dataset name
# D. creates a tidy data set with the average of each variable for each activity and each subject.

# From the README file for the data
## 'train/X_train.txt': Training set.
## 'test/X_test.txt': Test set.
## 'features.txt': List of all features.

############################################################
### Part A and C - Read the Data, Combine and Add Labels ###
### Join the subject to their activities and data        ###
############################################################

library(plyr)
library(dplyr)

x_train <- read.table(file="train/X_train.txt")
y_train <- read.table(file="train/y_train.txt")
subject_train <- read.table(file="train/subject_train.txt")
train <- cbind(subject_train, y_train, x_train)

x_test <- read.table(file="test/X_test.txt")
y_test <- read.table(file="test/y_test.txt")
subject_test <- read.table(file="test/subject_test.txt")
test <- cbind(subject_test, y_test, x_test)

testtrain <- rbind(test, train)

features <- read.table(file="features.txt")
activities <- read.table(file="activity_labels.txt")

testtrain[,2] <- activities[testtrain[,2],2]

colnames(testtrain) <- c("Subject", "Activity", make.names(features[,2], unique=TRUE))

head(testtrain, n=3)

#############################################################
### Part B and D- Subset for Means and Standard Deviations ##
### and output a tidy data set of computed means for each  ##
## activity and subject
############################################################

ttmeansd <- select(testtrain, 1, 2, contains("mean"), contains("std"))

head(ttmeansd[,1:5], n=3)

ttmeans <- aggregate(ttmeansd[,3:86], by=list(ttmeansd$"Subject", ttmeansd$"Activity"), mean)
rename(ttmeans, c("Group.1"="Subject", "Group.2"="Activity"))
head(ttmeans[,1:5],n=18)

names(ttmeans)[names(ttmeans)=="Group.1"] <- "Subject"
names(ttmeans)[names(ttmeans)=="Group.2"] <- "Activity"

write.table(ttmeans, "tidy.txt", row.names=FALSE)


##############################################################
## END OF FILE
##############################################################