Tidy Dataset

  1. The dataset has the following dimension:
            -Observations/Rows- 180
            -Variables/Column-  68
    
    2. The variable names are:

            Column Number         Column Name

             [1]                  "Subject"                                                                        
             [2]                  "Activity"                                                                       
             [3]                  "TimeDomainBodyAccelerometer-Mean()-X"                                           
             [4]                  "TimeDomainBodyAccelerometer-Mean()-Y"                                           
             [5]                  "TimeDomainBodyAccelerometer-Mean()-Z"                                           
             [6]                  "TimeDomainBodyAccelerometer-StandardDeviation()-X"                              
             [7]                  "TimeDomainBodyAccelerometer-StandardDeviation()-Y"                              
             [8]                  "TimeDomainBodyAccelerometer-StandardDeviation()-Z"                              
             [9]                  "TimeDomainGravityAccelerometer-Mean()-X"                                        
            [10]                  "TimeDomainGravityAccelerometer-Mean()-Y"                                        
            [11]                  "TimeDomainGravityAccelerometer-Mean()-Z"                                        
            [12]                  "TimeDomainGravityAccelerometer-StandardDeviation()-X"                           
            [13]                  "TimeDomainGravityAccelerometer-StandardDeviation()-Y"                           
            [14]                  "TimeDomainGravityAccelerometer-StandardDeviation()-Z"                           
            [15]                  "TimeDomainBodyAccelerometerJerk-Mean()-X"                                       
            [16]                   "TimeDomainBodyAccelerometerJerk-Mean()-Y"                                       
            [17]                  "TimeDomainBodyAccelerometerJerk-Mean()-Z"                                       
            [18]                  "TimeDomainBodyAccelerometerJerk-StandardDeviation()-X"                          
            [19]                  "TimeDomainBodyAccelerometerJerk-StandardDeviation()-Y"                          
            [20]                  "TimeDomainBodyAccelerometerJerk-StandardDeviation()-Z"                          
            [21]                  "TimeDomainBodyGyroscope-Mean()-X"                                               
            [22]                  "TimeDomainBodyGyroscope-Mean()-Y"                                               
            [23]                  "TimeDomainBodyGyroscope-Mean()-Z"                                               
            [24]                  "TimeDomainBodyGyroscope-StandardDeviation()-X"                                  
            [25]                  "TimeDomainBodyGyroscope-StandardDeviation()-Y"                                  
            [26]                  "TimeDomainBodyGyroscope-StandardDeviation()-Z"                                  
            [27]                  "TimeDomainBodyGyroscopeJerk-Mean()-X"                                           
            [28]                  "TimeDomainBodyGyroscopeJerk-Mean()-Y"                                           
            [29]                  "TimeDomainBodyGyroscopeJerk-Mean()-Z"                                           
            [30]                  "TimeDomainBodyGyroscopeJerk-StandardDeviation()-X"                              
            [31]                  "TimeDomainBodyGyroscopeJerk-StandardDeviation()-Y"                              
            [32]                  "TimeDomainBodyGyroscopeJerk-StandardDeviation()-Z"                              
            [33]                  "TimeDomainBodyAccelerometerMagnitude-Mean()"                                    
            [34]                  "TimeDomainBodyAccelerometerMagnitude-StandardDeviation()"                       
            [35]                  "TimeDomainGravityAccelerometerMagnitude-Mean()"                                 
            [36]                  "TimeDomainGravityAccelerometerMagnitude-StandardDeviation()"                    
            [37]                  "TimeDomainBodyAccelerometerJerkMagnitude-Mean()"                                
            [38]                  "TimeDomainBodyAccelerometerJerkMagnitude-StandardDeviation()"                   
            [39]                  "TimeDomainBodyGyroscopeMagnitude-Mean()"                                        
            [40]                  "TimeDomainBodyGyroscopeMagnitude-StandardDeviation()"                           
            [41]                  "TimeDomainBodyGyroscopeJerkMagnitude-Mean()"                                    
            [42]                  "TimeDomainBodyGyroscopeJerkMagnitude-StandardDeviation()"                       
            [43]                  "FrequencyDomainrequencyDomainBodyAccelerometer-Mean()-X"                        
            [44]                  "FrequencyDomainrequencyDomainBodyAccelerometer-Mean()-Y"                        
            [45]                  "FrequencyDomainrequencyDomainBodyAccelerometer-Mean()-Z"                        
            [46]                  "FrequencyDomainrequencyDomainBodyAccelerometer-StandardDeviation()-X"           
            [47]                  "FrequencyDomainrequencyDomainBodyAccelerometer-StandardDeviation()-Y"           
            [48]                  "FrequencyDomainrequencyDomainBodyAccelerometer-StandardDeviation()-Z"           
            [49]                  "FrequencyDomainrequencyDomainBodyAccelerometerJerk-Mean()-X"                    
            [50]                  "FrequencyDomainrequencyDomainBodyAccelerometerJerk-Mean()-Y"                    
            [51]                  "FrequencyDomainrequencyDomainBodyAccelerometerJerk-Mean()-Z"                    
            [52]                  "FrequencyDomainrequencyDomainBodyAccelerometerJerk-StandardDeviation()-X"       
            [53]                  "FrequencyDomainrequencyDomainBodyAccelerometerJerk-StandardDeviation()-Y"       
            [54]                  "FrequencyDomainrequencyDomainBodyAccelerometerJerk-StandardDeviation()-Z"       
            [55]                  "FrequencyDomainrequencyDomainBodyGyroscope-Mean()-X"                            
            [56]                  "FrequencyDomainrequencyDomainBodyGyroscope-Mean()-Y"                            
            [57]                  "FrequencyDomainrequencyDomainBodyGyroscope-Mean()-Z"                            
            [58]                  "FrequencyDomainrequencyDomainBodyGyroscope-StandardDeviation()-X"               
            [59]                  "FrequencyDomainrequencyDomainBodyGyroscope-StandardDeviation()-Y"               
            [60]                  "FrequencyDomainrequencyDomainBodyGyroscope-StandardDeviation()-Z"               
            [61]                  "FrequencyDomainrequencyDomainBodyAccelerometerMagnitude-Mean()"                 
            [62]                  "FrequencyDomainrequencyDomainBodyAccelerometerMagnitude-StandardDeviation()"    
            [63]                  "FrequencyDomainrequencyDomainBodyAccelerometerJerkMagnitude-Mean()"             
            [64]                  "FrequencyDomainrequencyDomainBodyAccelerometerJerkMagnitude-StandardDeviation()"
            [65]                  "FrequencyDomainrequencyDomainBodyGyroscopeMagnitude-Mean()"                     
            [66]                  "FrequencyDomainrequencyDomainBodyGyroscopeMagnitude-StandardDeviation()"        
            [67]                  "FrequencyDomainrequencyDomainBodyGyroscopeJerkMagnitude-Mean()"                 
            [68]                  "FrequencyDomainrequencyDomainBodyGyroscopeJerkMagnitude-StandardDeviation()"  

    3. Factor for Activity Columns have 6 composition. All of these were executed by a total of 30 Subjects.

      1 WALKING
      2 WALKING_UPSTAIRS
      3 WALKING_DOWNSTAIRS
      4 SITTING
      5 STANDING
      6 LAYING



    4. Aside from the Activity column which is a character data type and the Subject column with integer data type  the rest 
        of the columns keep a numeric value.



