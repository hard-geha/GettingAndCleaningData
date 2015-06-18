# Requirements

- R >= 3.2.0
- dplyr >= 0.4.1
- UCI HAR Dataset (provided within this repository but feel free to use another copy)

# Usage

Open a console and execute the following commands

    git clone https://github.com/ymc-geha/944dc4d4-6578-4619-97f8-df5788c7495b.git getdata-project
    cd getdata-project
    R -f run_analysis.R
    # or of you prefer an interactiv session to examine the results
    R -i
    source("run_analysis.R")
    

# Output

- The script provides two functions
    - _loadAndProcessData()_ without any arguments reads the raw data and returns a data set, with applied steps 1-4 of assignment.
    - _calculateAverages_ takes the output of the previous function and returns a new data set for step 5 of assignment.
- The script calls both functions and creates two variables
    - _meansAndStds_ holding the loaded and processed data set with steps 1-4 applied
    - _averagesByActivityAndSubject_ holding the final data set with the averages for each activity and subject
- Finaly the script prints the final data set

The file AveragesByActivityAndSubject.txt contains the final data set. You can load it with

    read.table("AveragesByActivityAndSubject.txt", header=T)