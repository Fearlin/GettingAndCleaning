# GettingAndCleaning

##run_analysis.R
Is a small script submitted for the course project.  It will read the data files required for this 
assignment from {working directory}/UCI HAR Dataset.  Upon completion the script will have written a
table text file {tidyData.txt} to the working directory.

The process for this is noted in the script.
Initially all of the files are read in.  Then the combining of like variables is done.  Next the 
labelling of the variables is done using the data from the read in text files. Then a selection of 
only the mean and standard deviation columns along with identifies of the type of activity and the 
subject.  Next a merging of the activities to the full data is done to replace the number codes for
activities with the appropriate description.  Next the full data columns are reorganized for 
readability.  Lastly the grouping an averaging of the means and standard deviations across the 
subjects and activities, and this data is saved to a text file.


##The data use for this assignment is:
==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

##Code Book
Subject - an identifying number of the subject the observations were performed on. 
Activity - 