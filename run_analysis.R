# This function does all the work of steps 1-4
loadAndProcessData <- function ()  {
    names.feature <- read.table("UCI HAR Dataset/features.txt", header = F)[,2]
    names.activity <- read.table("UCI HAR Dataset/activity_labels.txt", header = F)[,2]

    train.X <- read.table("UCI HAR Dataset/train/X_train.txt", header = F, col.names = names.feature)
    train.y <- read.table("UCI HAR Dataset/train/y_train.txt", header = F, col.names = "Activity")
    train.subject <- read.table("UCI HAR Dataset/train/subject_train.txt", header = F, col.names = "Subject")
    train.meansAndStds <- train.X[,grep("mean\\(\\)|std\\(\\)", names.feature)]
    train.data <- cbind(train.subject, train.y,train.meansAndStds)

    test.X <- read.table("UCI HAR Dataset/test/X_test.txt", header = F, col.names = names.feature)
    test.y <- read.table("UCI HAR Dataset/test/y_test.txt", header = F, col.names = "Activity")
    test.subject <- read.table("UCI HAR Dataset/test/subject_test.txt", header = F, col.names = "Subject")
    test.meansAndStds <- test.X[,grep("mean\\(\\)|std\\(\\)", names.feature)]
    test.data <- cbind(test.subject, test.y, test.meansAndStds)

    data <- rbind(train.data, test.data)

    data$Activity <- factor(data$Activity, labels = names.activity)

    colnames(data) <- sub("^t", "TimeDomainSignal", colnames(data))
    colnames(data) <- sub("^f", "FrequencyDomainSignal", colnames(data))
    colnames(data) <- sub("mean", "Mean", colnames(data))
    colnames(data) <- sub("std", "StandardDeviation", colnames(data))
    colnames(data) <- gsub("\\.+", "", colnames(data))

    data
}

# This function does step 5
calculateAverages <- function(input) {
    library(dplyr)
    output <- input %>% group_by(Activity, Subject) %>% summarise_each("mean")

    colnames(output) <- paste0("AverageOf", colnames(output))
    colnames(output)[1:2] <- c("Activity", "Subject")

    output
}



meansAndStds <- loadAndProcessData()
averagesByActivityAndSubject <- calculateAverages(meansAndStds)

print(averagesByActivityAndSubject)