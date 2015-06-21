# Checks if directory exists, otherwise creates a new directory
# Downloads the file to the specified directory,  unzips it and records date of download

fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./samsungdata.zip")
dateDownloaded<-date()
zipFile<- "./samsungdata.zip"
unzip(zipFile, files = NULL, list = FALSE, overwrite = TRUE,
      junkpaths = FALSE, exdir = "./samsungdata", unzip = "internal",
      setTimes = FALSE)