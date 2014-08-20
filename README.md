#README: run_analysis.R

This script will:
1 Download and unzip the data files from the website.
2 Read and combine the test files (subject_test.txt, y_test.txt, and x_test.txt) with meaningful column headings (features.txt) and decoding the activities (activity_labels.txt).
3 Read and combine the train files (subject_train.txt, y_train.txt, and x_train.txt) with meaningful column headings (features.txt) and decoding the activities (activity_labels.txt).
4 Combine the test and train files.
5 Extract the measurements that include mean() and std() in their column headings.
6 Create an anlysis (tidy)  dataset by computing an average for each measure at the subject/activity level.
7 Create column headings that reflect the summarization and name of the measurement.
8 Write the analysis dataset out to a text file.