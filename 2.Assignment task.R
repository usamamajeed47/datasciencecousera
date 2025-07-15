
unzip("data/rprog_data_ProgAssignment3-data.zip", exdir = "data")

data <- read.csv("data/outcome-of-care-measures.csv")
View(data)

data[,11] <- as.numeric(data[,11])
class(data[,11])
hist(data[,11])

data <- data[, c(2,11,17,7,23)


data[,c(2,3,5)] <-lapply(data[,c(2,3,5)],as.numeric)

best <- function(state,outcome) {
  data <- read.csv("data/outcome-of-care-measures.csv")
  data <- data[,c(2,7,11,17,23),]
  colnames(data) <- c("hospital","state","heart attack","heart failure","pneumonia")
  data[,c(3,4,5)] <- lapply(data[,c(3,4,5)],as.numeric)
  # remove the missing values for the specified outcome
  state_data <- data[data[,2]==state,]
  state_data <- state_data[!is.na(state_data[outcome]), ]
  min_value <- min(state_data[outcome],na.rm=TRUE) 
  min_data <- state_data[state_data[[outcome]] == min_value, ]
  
  best_hospital <- sort(min_data$hospital)[1]
  # In case of ties, return the first alphabetically
  
  return(best_hospital)
  
}
rank_hospital <- function(state, outcome, num = "best") {
  data <- read.csv("data/outcome-of-care-measures.csv")
  data <- data[,c(2,7,11,17,23)]
  colnames(data) <- c("hospital","state","heart attack","heart failure","pneumonia")
  data[,c(3,4,5)] <- lapply(data[,c(3,4,5)],as.numeric)
  
  state_data <- data[data[,2]==state,]
  state_data <- state_data[!is.na(state_data[outcome]), ]
  
  ordered_data <- state_data[order(state_data[[outcome]], state_data$hospital), ]
  
  if (num == "best") {
    return(ordered_data$hospital[1])
  } else if (num == "worst") {
    return(tail(ordered_data$hospital, n=1))
  } else if (num > nrow(ordered_data)) {
    return(NA)
  } else {
    return(ordered_data$hospital[num])
  }
}


rank_all <- function(outcome, num = "best") {
  data <- read.csv("data/outcome-of-care-measures.csv")
  data <- data[,c(2,7,11,17,23)]
  colnames(data) <- c("hospital","state","heart attack","heart failure","pneumonia")
  data[,c(3,4,5)] <- lapply(data[,c(3,4,5)],as.numeric)
  
  states <- unique(data$state)
  results <- data.frame(hospital = character(), state = character(), stringsAsFactors = FALSE)
  
  for (state in states) {
    state_result <- rank_hospital(state, outcome, num)
    results <- rbind(results, data.frame(hospital = state_result, state = state))
  }
  
  return(results)
}

