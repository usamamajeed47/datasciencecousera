# assignment task one pollutantmean function
pollutantmean <- function(directory, pollutant, id) {
  # Get full file paths
  files <- list.files(path = directory, full.names = TRUE)
  
  # Read only files corresponding to given ids
  selected_files <- files[id]
  
  # Read and combine all relevant files into one data frame
  all_data <- do.call(rbind, lapply(selected_files, read.csv))
  
  # Filter out NA values and calculate mean
  mean(all_data[[pollutant]], na.rm = TRUE)
}

pollutantmean("specdata", "sulfate", 1:10)

# assignment task 2 complete function 
complete <- function(directory, id =1:332)
{
  files <- list.files(directory,full.names=TRUE)
  all_data <- do.call(rbind, lapply(files[1:332],read.csv))
  data <- na.omit(all_data)
  table(data$ID)
  complete_cases <- data.frame(table(data$ID))
  names(complete_cases) <- c("ID", "nobs")
  complete_cases$ID <- as.numeric(complete_cases$ID) 
return(complete_cases[complete_cases$ID %in% id, ])
}
# task no 3 corr function 
corr <- function(directory, threshold = 0) {
  complete_cases <- complete(directory)
  
  valid_id <- complete_cases$ID[complete_cases$nobs > threshold]
  correlation <- numeric(0)
  
  for (id in valid_id) {
    file_path <- file.path(directory, sprintf("%03d.csv", id))
    data <- read.csv(file_path)
    
    valid_data <- na.omit(data[, c("sulfate", "nitrate")])
    
    if (nrow(valid_data) > 0) {
      correlation <- c(correlation, cor(valid_data$sulfate, valid_data$nitrate))
    }
  }
  
  return(correlation)  
}





set.seed(42)
cc <- complete("specdata", 332:1)
use <- sample(332, 10) 
print(cc[use, "nobs"])

cr <- corr("specdata")                
cr <- sort(cr)   
RNGversion("3.5.1")
set.seed(868)                
out <- round(cr[sample(length(cr), 5)], 4)
print(out)

cr <- corr("specdata", 129)                
cr <- sort(cr)                
n <- length(cr)    

set.seed(197)                
out <- c(n, round(cr[sample(n, 5)], 4))
print(out)

cr <- corr("specdata", 2000)                
n <- length(cr)                
cr <- corr("specdata", 1000)                
cr <- sort(cr)
print(c(n, round(cr, 4)))