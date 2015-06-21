DATA
_____

The raw data pertains to data captured from an experiment performed on 30 subjects while the subjects performed some activities. The data can be broadly divided into the following three types:-

1. Subjects - 30 subjects on whom the experiment was performed. Subjects are numbered 1 to 30
2. Activities - 6 activities that were performed by the subjects. The activities are WALKING, WALKING_UPSTAIRS
, WALKING_DOWNSTAIRS
, SITTING, STANDING and LAYING
. The activities are numbered 1 to 6
3. Features - The measurements taken while the subjects perform the activities. The measurements are tri-axial in nature (X, Y and Z representing the three axes). The following is the list of measurements:-

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The observations are divided into two data sets called TEST and TRAIN, each containing the data for some of the subjects. 


VARIABLES
_________

The abovementioned data is imported and assigned to the following 8 variables

subjectTest - subject number for each observation in the TEST dataset
xTest - measurements taken for each subject and activity in the TEST dataset
yTest - activity number for each observation in the TESt dataset
subjectTrain - subject number for each observation in the TRAIN dataset
xTrain- measurements taken for each subject and activity in the TRAIN dataset
yTrain- activity number for each observation in the TRAIN dataset
features - the variables for which measurements are taken
activityLabels - A label for each activity

PROCESSING
__________

Data is imported in to the abovementioned variables, and column names are assigned.
The TEST and TRAIN datasets are merged into one combined dataset in order to associate each measurement to an activity and subject
Only variables pertaining to mean and standard deviation are extracted from the combined dataset
The average of each measurement for each subject and activity is calculated.



