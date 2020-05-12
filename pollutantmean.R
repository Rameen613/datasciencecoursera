pollutantmean <- function(directory, pollutant, id = 1:332) {
  #path of the folder
  directory <- paste(getwd(),"/",directory,"/",sep="")
  
  #lists of all the files in the directory
  file_list <- list.files(directory, pattern="*.csv")
  data <- NA
  #for each id
  for (i in id) {
    #read file
    file_dir <- paste(directory,file_list[i],sep="")
    file_data <- read.csv(file_dir)
    
    data <- rbind(data,file_data)
  }
  #calculating the mean
  mean(data[[pollutant]],na.rm = TRUE)
}