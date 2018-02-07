#Here is the running code on tidying Human Activity Recognition Using Smartphones Dataset
#as part of COURSERA-JHU Getting and Cleaning the Data module.
#Submitted by: EDCEL ARTIFICIO

#Functionalities used in this code were made possible using the dplyr package.
> library(dplyr)

Attaching package: ‘dplyr’

The following objects are masked from ‘package:stats’:
  
  filter, lag

The following objects are masked from ‘package:base’:
  
  intersect, setdiff, setequal, union

#Take note that instead of coding using the link, I downloaded the whole dataset to my computer
#enclosed it to a folder named Getting and Cleaning the Data, thus making that my working directory.
> getwd()
[1] "/Users/edcelartificio/Documents/Coursera/Getting and Cleaning the Data"

#Dataset can be narrowed down into two- test and train. What I did is to load three enclosing text
#files to new variables for me to manipulate the data easily.
> Train_x<-read.table(file.path("train", "X_train.txt"))
> Train_y<-read.table(file.path("train", "y_train.txt"))
> Train_subject<-read.table(file.path("train", "subject_train.txt"))

> Test_x<-read.table(file.path("test", "X_test.txt"))
> Test_y<-read.table(file.path("test", "y_test.txt"))
> Test_subject<-read.table(file.path("test", "subject_test.txt"))

#After loading the test and train, I combined the text files based on its contents.
> result<-rbind(Train_x,Test_x)
> activity_name<-rbind(Train_y,Test_y)
> subject<-rbind(Train_subject,Test_subject)

#Looking in the contents of variable result, we will notice that the variables are not named properly. That is
#because the variable names are stored on a different text file named "features.txt" Our goal is to merge
#it to result, which is a variable. This four line of codes involve extracting the data from features.text
#down to subsetting it to get the right value we wat and load it to our variable result.
> features<-read.table("features.txt")
> mean_std<-grep("-(mean|std)\\(\\)", features[, 2])
> result<-result[ ,mean_std]
> names(result)<-features[mean_std, 2]

#Just like what we previously did, what we want here is to extract the contents of activity_labels.txt and subset it.
> Activities<-read.table("activity_labels.txt")
> activity_name[,1]<-Activities[activity_name[,1], 2]



#Renaming the column as a string "Activity" 
> names(activity_name)<-"Activity"

#Rename the column as a string "Subject"
> names(subject)<-"Subject"

#It has to be in this order so that well be able to observe our data. 
>final_data<-cbind(subject, activity_name, result)

#Although we were able to give column names to our dataset, reading to it at this level would still cause confusion
#that's why we need to eliminate unnecessary symbols and expand abbreviations used. 
> finalColumn<-colnames(final_data)
> finalColumn<-gsub("[\\(\\)-]", "", finalColumn)
> finalColumn<-gsub("Acc","Accelerometer", finalColumn)
> finalColumn<-gsub("Gyro","Gyroscope", finalColumn)
> finalColumn<-gsub("Mag","Magnitude", finalColumn)
> finalColumn<-gsub("Freq","Frequency", finalColumn)
> finalColumn<-gsub("mean","Mean", finalColumn)
> finalColumn<-gsub("std","StandardDeviation", finalColumn)
> finalColumn<-gsub("BodyBody","Body", finalColumn)
> finalColumn<-gsub("^f","frequencyDomain", finalColumn)
> finalColumn<-gsub("^t","TimeDomain", finalColumn)
> finalColumn<-gsub("^f","FrequencyDomain", finalColumn)

#After loading all this condition, we shall now load finalColumn as the updated and more tidy column name
#for our dataset.
> colnames(final_data)<-finalColumn

#Since we want to analyze this further, we will do chaining functions here to get the mean of the each subject 
#per activity.
> MeanFinalData<-final_data %>% group_by(Subject, Activity) %>% summarise_all(mean)

#After checking that I get credible result, I exported the cleaned dataset with a file name TidyData.txt.
> write.table(MeanFinalData, file= "TidyData.txt", row.names= FALSE, col.names = TRUE)
> View(MeanFinalData)
