projectenvironmentsetup <- function(archive = TRUE) {

        ## Caution: running this function with arguement 'archive' set to FALSE
        ## will delete the directory assigned by the 'projectdirectory' argument
        ## plus all files contained therein. Running this function when the
        ## argument 'projectdirectory' already exists in the working directory
        ## and arguement 'archive' set to TRUE will potentially use substantial
        ## hard disk space. Proceed with care.

        fileurl1 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        fileurl2 <- "https://www.dropbox.com/s/ga4mptrmgpb9w3a/Class_Project.txt?dl=0"
        projectdirectory <- "Getting_and_Cleaning_Data_Project"
        directorycheck <- dir.exists(paste(getwd(),
                                           projectdirectory, sep = "/"))

        ## Environment preparation

        if (directorycheck == TRUE & archive == TRUE) {

                recordarchivedate <- Sys.time()
                targetdirectory <- paste(projectdirectory,
                        format(recordarchivedate, "%Y%m%d_%Hh%Mm%Ss"),
                        "Archive", sep = "-")
                dir.create(targetdirectory)
                file.copy(from = paste(getwd(), projectdirectory, sep = "/"),
                          to = targetdirectory, overwrite = TRUE,
                          recursive = TRUE)
                unlink(projectdirectory, recursive = TRUE)
                dir.create(projectdirectory)
                setwd(paste(getwd(), projectdirectory, sep = "/"))
                dir.create("Download_Data")
                dir.create("Read_Data")
                dir.create("Write_Data")
                destinationzip <- "./Download_Data/projectdata.zip"
                download.file(fileurl1, destinationzip)
                recorddddate <- Sys.time()
                write.csv(recorddddate,
                          file = "./Write_Data/ZipFileDownloadDate.csv")
                unzip(destinationzip, exdir = paste(getwd(), "Read_Data",
                                                    sep = "/"))
                unzipdirectory <- list.files("Read_Data")
                setwd(paste(getwd(), "Read_Data", unzipdirectory, sep = "/"))
                destinationtextfile <- "Class_Project.txt"
                download.file(fileurl2, destinationtextfile)
                return("Archive, download, and unzip complete in working dir.")

        } else {

                unlink(projectdirectory, recursive = TRUE)
                dir.create(projectdirectory)
                setwd(paste(getwd(), projectdirectory, sep = "/"))
                dir.create("Download_Data")
                dir.create("Read_Data")
                dir.create("Write_Data")
                destinationzip <- "./Download_Data/projectdata.zip"
                download.file(fileurl1, destinationzip)
                recorddddate <- Sys.time()
                write.csv(recorddddate,
                        file = "./Write_Data/ZipFileDownloadDate.csv")
                unzip(destinationzip, exdir = paste(getwd(), "Read_Data",
                        sep = "/"))
                unzipdirectory <- list.files("Read_Data")
                setwd(paste(getwd(), "Read_Data", unzipdirectory, sep = "/"))
                destinationtextfile <- "Class_Project.txt"
                download.file(fileurl2, destinationtextfile)
                return("Archive, download, and unzip complete in working dir.")
        }
}