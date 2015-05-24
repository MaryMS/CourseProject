==================================================================
Course Project Getting Cleaning Data
Johns Hopkins Bloomberg School of Public Health // Coursera
==================================================================
Maria Marinho dos Santos

Based on:

*Human Activity Recognition Using Smartphones Dataset
Version 1.0

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws*
==================================================================

The data linked to from the course project represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.*


For each record it is provided:
======================================

- A 69-feature vector with the average of each variable (the measurements on the mean and standard deviation for each measurement of the main database) for each activity and each subject.
- Its activity label. 
- An identifier of the subject who carried out the experiment.


The dataset includes the following files:
=========================================

- 'run_analysis.R': Script containing the R Code with the work and tranformations of the data.

- 'README.txt'

- 'Code Book.md': Describes the variables, the data, and transformations performed on the dataset.

- 'tidyData.txt': final Dataset with Test and Train sets.


Notes: 
======

- On the dataset the variables are an average result of each mean and standard deviation measures based on the original dataset. The dataset is grouped by Activity and Subject.

- (*) From the original file.


License*:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.