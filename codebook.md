# getdata
Coursera course getdata-014

## Codebook for tidy.txt
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The tidy.txt data set is a dataframe with dimensions 180 x 81.

The rows each represent an activity by a subject. The first two columns are  activity and subject and are used for grouping the data.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. All data was normalized between -1 and 1.

* tBodyAcc-(mean)-XYZ  columns 3 to 5

* tBodyAcc-(std)-XYZ  columns 6 to 8

* tGravityAcc-(mean)-XYZ  columns 9 to 11

* tGravityAcc-(std)-XYZ   columns 12 to 14

* tBodyAccJerk-(mean)-XYZ  columns 15 to 17

* tBodyAccJerk-(std)-XYZ  columns 18 to 20

* tBodyGyro-(mean)-XYZ  columns 21 to 23

* tBodyGyro-(std)-XYZ  columns 24 to 26

* tBodyGyroJerk-(mean)-XYZ   27 to 29

* tBodyGyroJerk-(std)-XYZ   30 to 32

* tBodyAccMag-(mean)  column 33

* tBodyAccMag-(std)   column 34

* tGravityAccMag-(mean)  column 35

* tGravityAccMag-(std) column 36

* tBodyAccJerkMag-(mean) column 37

* tBodyAccJerkMag-(std) column 38

* tBodyGyroMag-(mean) column 39

* tBodyGyroMag-(std) column 40

* tBodyGyroJerkMag-(mean) column 41

* tBodyGyroJerkMag-(std) column 42

* fBodyAcc-XYZ-(mean) columns 43 to 45 

* fBodyAcc-XYZ-(std) columns 46 to 48

* fBodyAcc-meanFreq()-XYZ columns 49 to 51

* fBodyAccJerk-XYZ-(mean) columns 52 to 54

* fBodyAccJerk-XYZ-(std) columns 55 to 57

* fBodyAccJerk-XYZ-meanFreq columns 58 to 60

* fBodyGyro-XYZ-(mean) columns 61 to 63

* fBodyGyro-XYZ-(std) columns 64 to 66

* fBodyAccJerk-XYZ-(std) columns 67 to 69

* fBodyAccMag-(mean) column 70

* fBodyAccMag-(std) column 71

* fBodyAccMag-(std) column 72

* fBodyAccJerkMag-(mean) column 73

* fBodyAccJerkMag-(std) column 74

* fBodyAccJerkMag-(std) column 75

* fBodyGyroMag-(mean) column 76

* fBodyGyroMag-(std) column 77

* fBodyGyroMag-meanFreq column 78

* fBodyGyroJerkMag-(mean) column 79

* fBodyGyroJerkMag-(std) column 80

* fBodyGyroJerkMag-(std) column 81