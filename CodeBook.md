# CodeBook.md, repo: getting data

##Repo for Coursera Getting and Cleaning Data Class
##This CodeBook describes the data in file: tidy.txt

### See README.md for steps in the analysis

* filename : tidy.txt
* 180 observations, 86 variables
* Means of measures by subject and activity
* fields:

 [1] "Subject"                              "Activity"                             "tBodyAcc.mean...X"                   
 [4] "tBodyAcc.mean...Y"                    "tBodyAcc.mean...Z"                    "tGravityAcc.mean...X"                
 [7] "tGravityAcc.mean...Y"                 "tGravityAcc.mean...Z"                 "tBodyAccJerk.mean...X"               
[10] "tBodyAccJerk.mean...Y"                "tBodyAccJerk.mean...Z"                "tBodyGyro.mean...X"                  
[13] "tBodyGyro.mean...Y"                   "tBodyGyro.mean...Z"                   "tBodyGyroJerk.mean...X"              
[16] "tBodyGyroJerk.mean...Y"               "tBodyGyroJerk.mean...Z"               "tBodyAccMag.mean.."                  
[19] "tGravityAccMag.mean.."                "tBodyAccJerkMag.mean.."               "tBodyGyroMag.mean.."                 
[22] "tBodyGyroJerkMag.mean.."              "fBodyAcc.mean...X"                    "fBodyAcc.mean...Y"                   
[25] "fBodyAcc.mean...Z"                    "fBodyAcc.meanFreq...X"                "fBodyAcc.meanFreq...Y"               
[28] "fBodyAcc.meanFreq...Z"                "fBodyAccJerk.mean...X"                "fBodyAccJerk.mean...Y"               
[31] "fBodyAccJerk.mean...Z"                "fBodyAccJerk.meanFreq...X"            "fBodyAccJerk.meanFreq...Y"           
[34] "fBodyAccJerk.meanFreq...Z"            "fBodyGyro.mean...X"                   "fBodyGyro.mean...Y"                  
[37] "fBodyGyro.mean...Z"                   "fBodyGyro.meanFreq...X"               "fBodyGyro.meanFreq...Y"              
[40] "fBodyGyro.meanFreq...Z"               "fBodyAccMag.mean.."                   "fBodyAccMag.meanFreq.."              
[43] "fBodyBodyAccJerkMag.mean.."           "fBodyBodyAccJerkMag.meanFreq.."       "fBodyBodyGyroMag.mean.."             
[46] "fBodyBodyGyroMag.meanFreq.."          "fBodyBodyGyroJerkMag.mean.."          "fBodyBodyGyroJerkMag.meanFreq.."     
[49] "angle.tBodyAccMean.gravity."          "angle.tBodyAccJerkMean..gravityMean." "angle.tBodyGyroMean.gravityMean."    
[52] "angle.tBodyGyroJerkMean.gravityMean." "angle.X.gravityMean."                 "angle.Y.gravityMean."                
[55] "angle.Z.gravityMean."                 "tBodyAcc.std...X"                     "tBodyAcc.std...Y"                    
[58] "tBodyAcc.std...Z"                     "tGravityAcc.std...X"                  "tGravityAcc.std...Y"                 
[61] "tGravityAcc.std...Z"                  "tBodyAccJerk.std...X"                 "tBodyAccJerk.std...Y"                
[64] "tBodyAccJerk.std...Z"                 "tBodyGyro.std...X"                    "tBodyGyro.std...Y"                   
[67] "tBodyGyro.std...Z"                    "tBodyGyroJerk.std...X"                "tBodyGyroJerk.std...Y"               
[70] "tBodyGyroJerk.std...Z"                "tBodyAccMag.std.."                    "tGravityAccMag.std.."                
[73] "tBodyAccJerkMag.std.."                "tBodyGyroMag.std.."                   "tBodyGyroJerkMag.std.."              
[76] "fBodyAcc.std...X"                     "fBodyAcc.std...Y"                     "fBodyAcc.std...Z"                    
[79] "fBodyAccJerk.std...X"                 "fBodyAccJerk.std...Y"                 "fBodyAccJerk.std...Z"                
[82] "fBodyGyro.std...X"                    "fBodyGyro.std...Y"                    "fBodyGyro.std...Z"                   
[85] "fBodyAccMag.std.."                    "fBodyBodyAccJerkMag.std.."  


## Original Data - http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
Abstract: Human Activity Recognition database built from the recordings of 30 subjects performing activities of 
daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.
	
*Data Set Characteristics:  	
*Multivariate, Time-Series
*Number of Instances:
*10299
*Number of Attributes:	
*561	
*Missing Values?	
*N/A
	