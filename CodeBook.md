# Code Book

# Source Dataset Description 

See general information at: **** [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones))

Additional detailed information can be found in the features\_info.txt file that is included in the data download.

# Analysis Dataset Description (TidyDataSet.txt)

Measure Field Name Field Decode: aaa.bbb.ccc.d where

- aaa = Summarization Function (i.e., Avg = Average) - applied to all measure columns 
- bbb = Signal (e.g., tBodyAcc)
- ccc = original function applied to signal (i.e., mean or std -> standard deviation)
- d = direction (i.e., x, y or z) Note does not apply to all measurements

****

## Fields: 

### 1: Subject    
Description: Participant Identifier
Factor Values: 1 – 30

### 2: Activity    
Description: Type of activity measured.
Factor Transformation:

- 1 -> WALKING
- 2 -> WALKING\_UPSTAIRS
- 3 -> WALKING\_DOWNSTAIRS
- 4 -> SITTING
- 5 -> STANDING
- 6 -> LAYING

### 3: Avg.tBodyAcc.mean.X    
Measure: tBodyAcc.mean.X

Summarization: Average by Subject and Activity

### 4: Avg.tBodyAcc.mean.Y         
Measure: tBodyAcc.mean.Y

Summarization: Average by Subject and Activity

### 5: Avg.tBodyAcc.mean.Z
Measure: tBodyAcc.mean.Z

Summarization: Average by Subject and Activity

### 6: Avg.tBodyAcc.std.X
Measure: tBodyAcc.std.X

Summarization: Average by Subject and Activity

### 7: Avg.tBodyAcc.std.Y    
Measure: tBodyAcc.std.Y

Summarization: Average by Subject and Activity

### 8: Avg.tBodyAcc.std.Z 
Measure: tBodyAcc.std.Z

Summarization: Average by Subject and Activity

### 9: Avg.tGravityAcc.mean.X
Measure: tGravityAcc.mean.X

Summarization: Average by Subject and Activity

### 10: Avg.tGravityAcc.mean.Y
Measure: tGravityAcc.mean.Y

Summarization: Average by Subject and Activity

### 11: Avg.tGravityAcc.mean.Z
Measure: tGravityAcc.mean.Z

Summarization: Average by Subject and Activity

### 12: Avg.tGravityAcc.std.X 
Measure: tGravityAcc.std.X

Summarization: Average by Subject and Activity

### 13: Avg.tGravityAcc.std.Y
Measure: tGravityAcc.std.Y

Summarization: Average by Subject and Activity

### 14: Avg.tGravityAcc.std.Z
Measure: tGravityAcc.std.Z

Summarization: Average by Subject and Activity

### 15: Avg.tBodyAccJerk.mean.X
Measure: tBodyAccJerk.mean.X

Summarization: Average by Subject and Activity

### 16: Avg.tBodyAccJerk.mean.Y 
Measure:  tBodyAccJerk.mean.Y

Summarization: Average by Subject and Activity

### 17: Avg.tBodyAccJerk.mean.Z
Measure:  tBodyAccJerk.mean.X

Summarization: Average by Subject and Activity

### 18: Avg.tBodyAccJerk.std.X
Measure:  tBodyAccJerk.std.X

Summarization: Average by Subject and Activity

### 19: Avg.tBodyAccJerk.std.Y
Measure:  tBodyAccJerk.std.Y

Summarization: Average by Subject and Activity

### 20: Avg.tBodyAccJerk.std.Z 
Measure:  tBodyAccJerk.std.Z

Summarization: Average by Subject and Activity

### 21: Avg.tBodyGyro.mean.X
Measure: tBodyGyro.mean.X

Summarization: Average by Subject and Activity

### 22: Avg.tBodyGyro.mean.Y
Measure: tBodyGyro.mean.Y

Summarization: Average by Subject and Activity

### 23: Avg.tBodyGyro.mean.Z
Measure:  tBodyGyro.mean.Z

Summarization: Average by Subject and Activity

### 24: Avg.tBodyGyro.std.X 
Measure: tBodyGyro.std.X

Summarization: Average by Subject and Activity

### 25: Avg.tBodyGyro.std.Y
Measure: tBodyGyro.std.Y

Summarization: Average by Subject and Activity

### 26: Avg.tBodyGyro.std.Z
Measure:  tBodyGyro.std.Z

Summarization: Average by Subject and Activity

### 27: Avg.tBodyGyroJerk.mean.X
Measure: tBodyGyroJerk.mean.X

Summarization: Average by Subject and Activity

### 28: Avg.tBodyGyroJerk.mean.Y   
Measure: tBodyGyroJerk.mean.Y

Summarization: Average by Subject and Activity

### 29: Avg.tBodyGyroJerk.mean.Z
Measure: tBodyGyroJerk.mean.Z

Summarization: Average by Subject and Activity

### 30: Avg.tBodyGyroJerk.std.X
Measure: tBodyGyroJerk.std.X

Summarization: Average by Subject and Activity

### 31: Avg.tBodyGyroJerk.std.Y
tBodyGyroJerk.std.Y
Summarization: Average by Subject and Activity

### 32: Avg.tBodyGyroJerk.std.Z 
Measure: tBodyGyroJerk.std.Z

Summarization: Average by Subject and Activity

### 33: Avg.tBodyAccMag.mean
Measure: tBodyAccMag.mean

Summarization: Average by Subject and Activity

### 34: Avg.tBodyAccMag.std
Measure: tBodyAccMag.std

Summarization: Average by Subject and Activity

### 35: Avg.tGravityAccMag.mean
Measure: tGravityAccMag.mean

Summarization: Average by Subject and Activity

### 36: Avg.tGravityAccMag.std 
Measure: tGravityAccMag.std

Summarization: Average by Subject and Activity

### 37: Avg.tBodyAccJerkMag.mean
Measure: tBodyAccJerkMag.mean

Summarization: Average by Subject and Activity

### 38: Avg.tBodyAccJerkMag.std
Measure:  tBodyAccJerkMag.std

Summarization: Average by Subject and Activity

### 39: Avg.tBodyGyroMag.mean
Measure:  tBodyGyroMag.mean

Summarization: Average by Subject and Activity

### 40: Avg.tBodyGyroMag.std 
Measure: tBodyGyroMag.std 

Summarization: Average by Subject and Activity

### 41: Avg.tBodyGyroJerkMag.mean
Measure: tBodyGyroJerkMag.mean

Summarization: Average by Subject and Activity

### 42: Avg.tBodyGyroJerkMag.std
Measure: tBodyGyroJerkMag.std

Summarization: Average by Subject and Activity

### 43: Avg.fBodyAcc.mean.X
Measure: fBodyAcc.mean.X

Summarization: Average by Subject and Activity

### 44: Avg.fBodyAcc.mean.Y  
Measure: fBodyAcc.mean.Y

Summarization: Average by Subject and Activity

### 45: Avg.fBodyAcc.mean.Z
Measure: fBodyAcc.mean.Z

Summarization: Average by Subject and Activity

### 46: Avg.fBodyAcc.std.X
Measure: fBodyAcc.std.X

Summarization: Average by Subject and Activity

### 47: Avg.fBodyAcc.std.Y    
Measure: fBodyAcc.std.Y

Summarization: Average by Subject and Activity

### 48: Avg.fBodyAcc.std.Z 
Measure: fBodyAcc.std.Z  

Summarization: Average by Subject and Activity

### 49: Avg.fBodyAccJerk.mean.X
Measure: fBodyAccJerk.mean.X
Summarization: Average by Subject and Activity

### 50: Avg.fBodyAccJerk.mean.Y
Measure:  fBodyAccJerk.mean.Y

Summarization: Average by Subject and Activity

### 51: Avg.fBodyAccJerk.mean.Z
Measure:  fBodyAccJerk.mean.Z

Summarization: Average by Subject and Activity

### 52: Avg.fBodyAccJerk.std.X  
Measure: fBodyAccJerk.std.X 

Summarization: Average by Subject and Activity

### 53: Avg.fBodyAccJerk.std.Y
Measure: fBodyAccJerk.std.Y

Summarization: Average by Subject and Activity

### 54: Avg.fBodyAccJerk.std.Z
Measure: fBodyAccJerk.std.Z

Summarization: Average by Subject and Activity

### 55: Avg.fBodyGyro.mean.X
Measure: fBodyGyro.mean.X

Summarization: Average by Subject and Activity

### 56: Avg.fBodyGyro.mean.Y 
Measure: fBodyGyro.mean.Y   

Summarization: Average by Subject and Activity

### 57: Avg.fBodyGyro.mean.Z
Measure: fBodyGyro.mean.Z

Summarization: Average by Subject and Activity

### 58: Avg.fBodyGyro.std.X
Measure: fBodyGyro.std.X

Summarization: Average by Subject and Activity

### 59: Avg.fBodyGyro.std.Y
Measure: fBodyGyro.std.Y

Summarization: Average by Subject and Activity

### 60: Avg.fBodyGyro.std.Z     
Measure: fBodyGyro.std.Z    

Summarization: Average by Subject and Activity

### 61: Avg.fBodyAccMag.mean
Measure: fBodyAccMag.mean

Summarization: Average by Subject and Activity

### 62: Avg.fBodyAccMag.std
Measure: fBodyAccMag.std

Summarization: Average by Subject and Activity

### 63: Avg.fBodyBodyAccJerkMag.mean
Measure: fBodyBodyAccJerkMag.mean

Summarization: Average by Subject and Activity

### 64: Avg.fBodyBodyAccJerkMag.std     
Measure: fBodyBodyAccJerkMag.std 

Summarization: Average by Subject and Activity

### 65: Avg.fBodyBodyGyroMag.mean
Measure: fBodyBodyGyroMag.mean

Summarization: Average by Subject and Activity

### 66: Avg.fBodyBodyGyroMag.std
Measure: fBodyBodyGyroMag.std

Summarization: Average by Subject and Activity

### 67: Avg.fBodyBodyGyroJerkMag.mean
Measure: fBodyBodyGyroJerkMag.mean

Summarization: Average by Subject and Activity

### 68: Avg.fBodyBodyGyroJerkMag.std 
Measure: fBodyBodyGyroJerkMag.std 

Summarization: Average by Subject and Activity