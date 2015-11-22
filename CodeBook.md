# Getting & Cleaning Data Assignment - CodeBook
This is the CodeBook File.
As illustrated in the requirements of this assignment, this file documents the variables, the data and any transformations or work that the script "run_analysis.R" has accessed or performed.

* Step 1: Read training dataset ("X_train.txt"), training label ("y_train.txt") and training subject ("subject_train.txt")
* Step 2: Read test dataset ("X_test.txt"), test label ("y_test.txt") and test subject ("subject_test.txt")
* Step 3: Row combine training & test datasets and generate "JointData", "JointLabel" and "JointSubject"
* Step 4: Read feature list ("features.txt") and extrack the row positions (MeanStdPos) where feature list variables contain "mean" or "std". The row positions in feature list correspond to the column positions of "JointData"
* Step 5: Subset "JointData" by "MeanStdPos$V1" 
* Step 6: Read activity list ("activity_labels.txt") and extract "ActivityList". Substitute numbers in "JointLabel" by elements in "ActivityList". Name the column as "Activity"
* Step 7: Name the column of "JointSubject" as "Subject"
* Step 8: Name the column of "JointData" as "MeanStdPos[,2]"
* Step 9: Column combine three datasets: "JointSubject", "JointLabel" and "JointData". Write "CombinedData" to file "CombinedData.txt" with row.name=FALSE
* Step 10: Melt command (reshape2 package) to "CombinedData" 
* Step 11: Dcast command with average to "ReshapeData" and generate "DecastData"
* Step 12: Write "DecastData" to file "DecastData.txt" with row.name=FALSE 