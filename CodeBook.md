# Overall description
This data set contains the averages of the mean value and standard deviation of all measures  for each activitiy and subject.

The averages are calculated over all observations of the training data and the test data.

# Variables

## Activity
A string representing one of the following _activity_labels_ as described in "./UCI HAR Dataset/activity_labels.txt" of the raw data

- WALKING
- WALKING_UPSTAIRS
- WALKING_DOWNSTAIRS
- SITTING
- STANDING
- LAYING

## Subject
A number ranging from 1 to 30 representing a test person called subject 

## Averages
All the rest of the variables are averages (aka. means) of the originial means and standard deviation values. Please refer to the variable descriptions of the raw data set to get in depth details about the ranges and units.

- "AverageOfTimeDomainSignalBodyAccMeanX"                             
- "AverageOfTimeDomainSignalBodyAccMeanY"                             
- "AverageOfTimeDomainSignalBodyAccMeanZ"                             
- "AverageOfTimeDomainSignalBodyAccStandardDeviationX"                
- "AverageOfTimeDomainSignalBodyAccStandardDeviationY"                
- "AverageOfTimeDomainSignalBodyAccStandardDeviationZ"                
- "AverageOfTimeDomainSignalGravityAccMeanX"                          
- "AverageOfTimeDomainSignalGravityAccMeanY"                          
- "AverageOfTimeDomainSignalGravityAccMeanZ"                          
- "AverageOfTimeDomainSignalGravityAccStandardDeviationX"             
- "AverageOfTimeDomainSignalGravityAccStandardDeviationY"             
- "AverageOfTimeDomainSignalGravityAccStandardDeviationZ"             
- "AverageOfTimeDomainSignalBodyAccJerkMeanX"                         
- "AverageOfTimeDomainSignalBodyAccJerkMeanY"                         
- "AverageOfTimeDomainSignalBodyAccJerkMeanZ"                         
- "AverageOfTimeDomainSignalBodyAccJerkStandardDeviationX"            
- "AverageOfTimeDomainSignalBodyAccJerkStandardDeviationY"            
- "AverageOfTimeDomainSignalBodyAccJerkStandardDeviationZ"            
- "AverageOfTimeDomainSignalBodyGyroMeanX"                            
- "AverageOfTimeDomainSignalBodyGyroMeanY"                            
- "AverageOfTimeDomainSignalBodyGyroMeanZ"                            
- "AverageOfTimeDomainSignalBodyGyroStandardDeviationX"               
- "AverageOfTimeDomainSignalBodyGyroStandardDeviationY"               
- "AverageOfTimeDomainSignalBodyGyroStandardDeviationZ"               
- "AverageOfTimeDomainSignalBodyGyroJerkMeanX"                        
- "AverageOfTimeDomainSignalBodyGyroJerkMeanY"                        
- "AverageOfTimeDomainSignalBodyGyroJerkMeanZ"                        
- "AverageOfTimeDomainSignalBodyGyroJerkStandardDeviationX"           
- "AverageOfTimeDomainSignalBodyGyroJerkStandardDeviationY"           
- "AverageOfTimeDomainSignalBodyGyroJerkStandardDeviationZ"           
- "AverageOfTimeDomainSignalBodyAccMagMean"                           
- "AverageOfTimeDomainSignalBodyAccMagStandardDeviation"              
- "AverageOfTimeDomainSignalGravityAccMagMean"                        
- "AverageOfTimeDomainSignalGravityAccMagStandardDeviation"           
- "AverageOfTimeDomainSignalBodyAccJerkMagMean"                       
- "AverageOfTimeDomainSignalBodyAccJerkMagStandardDeviation"          
- "AverageOfTimeDomainSignalBodyGyroMagMean"                          
- "AverageOfTimeDomainSignalBodyGyroMagStandardDeviation"             
- "AverageOfTimeDomainSignalBodyGyroJerkMagMean"                      
- "AverageOfTimeDomainSignalBodyGyroJerkMagStandardDeviation"         
- "AverageOfFrequencyDomainSignalBodyAccMeanX"                        
- "AverageOfFrequencyDomainSignalBodyAccMeanY"                        
- "AverageOfFrequencyDomainSignalBodyAccMeanZ"                        
- "AverageOfFrequencyDomainSignalBodyAccStandardDeviationX"           
- "AverageOfFrequencyDomainSignalBodyAccStandardDeviationY"           
- "AverageOfFrequencyDomainSignalBodyAccStandardDeviationZ"           
- "AverageOfFrequencyDomainSignalBodyAccJerkMeanX"                    
- "AverageOfFrequencyDomainSignalBodyAccJerkMeanY"                    
- "AverageOfFrequencyDomainSignalBodyAccJerkMeanZ"                    
- "AverageOfFrequencyDomainSignalBodyAccJerkStandardDeviationX"       
- "AverageOfFrequencyDomainSignalBodyAccJerkStandardDeviationY"       
- "AverageOfFrequencyDomainSignalBodyAccJerkStandardDeviationZ"       
- "AverageOfFrequencyDomainSignalBodyGyroMeanX"                       
- "AverageOfFrequencyDomainSignalBodyGyroMeanY"                       
- "AverageOfFrequencyDomainSignalBodyGyroMeanZ"                       
- "AverageOfFrequencyDomainSignalBodyGyroStandardDeviationX"          
- "AverageOfFrequencyDomainSignalBodyGyroStandardDeviationY"          
- "AverageOfFrequencyDomainSignalBodyGyroStandardDeviationZ"          
- "AverageOfFrequencyDomainSignalBodyAccMagMean"                      
- "AverageOfFrequencyDomainSignalBodyAccMagStandardDeviation"         
- "AverageOfFrequencyDomainSignalBodyBodyAccJerkMagMean"              
- "AverageOfFrequencyDomainSignalBodyBodyAccJerkMagStandardDeviation" 
- "AverageOfFrequencyDomainSignalBodyBodyGyroMagMean"                 
- "AverageOfFrequencyDomainSignalBodyBodyGyroMagStandardDeviation"    
- "AverageOfFrequencyDomainSignalBodyBodyGyroJerkMagMean"             
- "AverageOfFrequencyDomainSignalBodyBodyGyroJerkMagStandardDeviation 

In order to find the corresponding variable name of the raw data, perform the following transformations on the variable names:

1. Strip the leading "AverageOf"
2. Replace "TimeDomainSignal" with "t" and "FrequencyDomainSignal" with "f"
3. Replace "Mean" with "-mean()" and "StandardDeviation" with "-std()"
4. Insert a minus before a trailing "X", "Y" or "Z"