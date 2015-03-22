---
title: "CodeBook.md"
author: "Lauren Fitch"
date: "Sunday, March 22, 2015"
output: html_document
---

This data comes from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones and represents accelerometer data from Samsung smartphones. 

Variables

1. subject: the subject in the experiment
2. activity: the activity the subject was performing when the measurement was taken:
    WALKING
    WALKING_UPSTAIRS
    WALKING_DOWNSTAIRS
    SITTING
    STANDING
    LAYING

Variables 3-81 represent the mean ofeach variable grouped by subject and activity. Full explanation of each variable can be found in the original documentation below.

3. tBodyAccmeanX
4. tBodyAccmeanY
5. tBodyAccmeanZ
6. tBodyAccstdX
7. tBodyAccstdY
8. tBodyAccstdZ
9. tGravityAccmeanX
10. tGravityAccmeanY
11. tGravityAccmeanZ
12. tGravityAccstdX
13. tGravityAccstdY
14. tGravityAccstdZ
15. tBodyAccJerkmeanX
16. tBodyAccJerkmeanY
17. tBodyAccJerkmeanZ
18. tBodyAccJerkstdX
19. tBodyAccJerkstdY
20. tBodyAccJerkstdZ
21. tBodyGyromeanX
22. tBodyGyromeanY
23. tBodyGyromeanZ
24. tBodyGyrostdX
25. tBodyGyrostdY
26. tBodyGyrostdZ
27. tBodyGyroJerkmeanX
28. tBodyGyroJerkmeanY
29. tBodyGyroJerkmeanZ
30. tBodyGyroJerkstdX
31. tBodyGyroJerkstdY
32. tBodyGyroJerkstdZ
33. tBodyAccMagmean
34. tBodyAccMagstd
35. tGravityAccMagmean
36. tGravityAccMagstd
37. tBodyAccJerkMagmean 
38. tBodyAccJerkMagstd 
39. tBodyGyroMagmean 
40. tBodyGyroMagstd 
41. tBodyGyroJerkMagmean 
42. tBodyGyroJerkMagstd 
43. fBodyAccmeanX 
44. fBodyAccmeanY 
45. fBodyAccmeanZ 
46. fBodyAccstdX 
47. fBodyAccstdY 
48. fBodyAccstdZ 
49. fBodyAccmeanFreqX 
50. fBodyAccmeanFreqY 
51. fBodyAccmeanFreqZ 
52. fBodyAccJerkmeanX 
53. fBodyAccJerkmeanY 
54. fBodyAccJerkmeanZ 
55. fBodyAccJerkstdX 
56. fBodyAccJerkstdY 
57. fBodyAccJerkstdZ 
58. fBodyAccJerkmeanFreqX 
59. fBodyAccJerkmeanFreqY 
60. fBodyAccJerkmeanFreqZ 
61. fBodyGyromeanX 
62. fBodyGyromeanY 
63. fBodyGyromeanZ 
64. fBodyGyrostdX 
65. fBodyGyrostdY 
66. fBodyGyrostdZ 
67. fBodyGyromeanFreqX 
68. fBodyGyromeanFreqY 
69. fBodyGyromeanFreqZ 
70. fBodyAccMagmean 
71. fBodyAccMagstd 
72. fBodyAccMagmeanFreq 
73. fBodyBodyAccJerkMagmean 
74. fBodyBodyAccJerkMagstd 
75. fBodyBodyAccJerkMagmeanFreq 
76. fBodyBodyGyroMagmean 
77. fBodyBodyGyroMagstd 
78. fBodyBodyGyroMagmeanFreq 
79. fBodyBodyGyroJerkMagmean 
80. fBodyBodyGyroJerkMagstd 
81. fBodyBodyGyroJerkMagmeanFreq

The following is a reproduction of the original README file submitted with the data:

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

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
