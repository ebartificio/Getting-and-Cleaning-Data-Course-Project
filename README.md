# Getting-and-Cleaning-Data-Course-Project
By: EDCEL B. ARTIFICIO

In fulfillment of the Coursera-John Hopkins University's module on Getting and Cleaning the Data, students are required to
work with untidy data from an experiment on Human Activity Recognition Using Smartphones Dataset. The dataset is composed of
multiple related tables which represents computational value from the study.

The goal here is to make connection to these table and provide essential information specifically the mean of the activities 
conducted during the experiment. The untidy dataset can be accessed by accessing https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Students should create one R script called run_analysis.R that does the following.

    1. Merges the training and the test sets to create one data set.
    2. Extracts only the measurements on the mean and standard deviation for each measurement.
    3. Uses descriptive activity names to name the activities in the data set
    4. Appropriately labels the data set with descriptive variable names.
    5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each   
        activity and each subject.

The goal here is to put together 8 individual tables which are saved on a text file. Since the study was conducted on two 
different instance- test and train, it produces two sets of label(y), result(x) and subject.

Summary of Process for Analysis:

  1. Load all tables, which are listed below, from the dataset using the read.table function.
    - 'train/X_train.txt': Training set.
    - 'train/y_train.txt': Training labels.
    - 'train/subject_train.txt': Training subjects.
    - 'test/X_test.txt': Test set.
    - 'test/y_test.txt': Test labels.
    - 'test/subject_test.txt': Test subjects.
    - 'features.txt': List of all features.
    - 'activity_labels.txt': Links the class labels with their activity name.

  2. Assign these tables to specific variable, for us to explore and clean the data. 

  3. Since the data is composed of three sets of identical tables(subject, set, labels) from 'test' and 'training' folder
     what we want is to combine rows of the each data tables using "rbind" function. Because of this, we narrow down our data 
     tables from 6 to 3.
     
  4. Now, we focus on our "set" files which now has a variable name "result" after merging test and training set.Looking 
     through the dataset, the column names doesn't make any sense, thus we need to put meaning to it by adding labels.  
     What we want to do is to label it using the "features" dataset. We do this by subsetting the second column
     of the set dataset and assign it to our "result" variable as column name. We will also name the columns for the 
     "activity_labels" and subject before merging it with the result using the cbind function in the order of (subject,
     activity, result), thus creating the final_data variable.
     
  5.  At this point we already have an almost cleaned dataset. However, the column names for the result still makes it hard
      for someone to understand. Thus, we have to eliminate unnecessary symbolys and expand abbreviations that were use using 
      the "gsub" function. After cleaning the column names, we can load it back to final_data and see that we now have a clean
      and tidy dataset.
      
  6.  Next, we want to get the mean of our dataset which is segmented by Subject and Activity. In here, we use chaining
      method using the "%>%" function to group and summarize it. We then store it to MeanFinalData.
      
  7. Lastly, we will extract the cleaned and tidy dataset into a text file using the "write.table" function with the file name
     TidyData.txt
     
