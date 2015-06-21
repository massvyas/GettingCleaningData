README
______

There are two scripts. The first script called download_data.R. It downloads the data from link provided.
The downloaded data is saved as samsungdata.zip in the working directory and unzipped there into a folder called 'samsungdata'. 

The second script is called run_analysis.R and processes the data in the following order:-

1. Looks for the data in the working directory in a folder called 'samsungdata'
2. Imports required data into variables
3. Assigns column names to the variables
4. Combines test and train data into one combined dataset
5. Extracts the required measures (mean and standard deviation) from the dataset
6. Assigns activity labels to the data
7. Calculates the average for each measure for each subjectID and activityLabel.
8. The output 'averages.txt' is written to 'samsungdata' folder.