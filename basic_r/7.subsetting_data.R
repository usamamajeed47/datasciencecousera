# subsetting the data 
# we can used different method to method subset based on the data type 

# 1. [] single square barackets for subsetting of data types like character, numeric, factor, etc.
# 2. [[]] double square barackets for subsetting of list and data frame
# 3. $ dollar sign for subsetting of list and data frame by it's name 
# 4. @ at sign for subsetting of S4 objects

# subsetiing the data in vector using singel bracketes 
x <- c("a","b","c","d","e")
x[1]

x[2]

x[1:4]

# subsetting based on logical basis 
 x[x > "b"]
 
 u <- x >"a"
 u 
 x[u]
 
 # subsetting the list  data 
 x <- list(foo=1:4,bar=0.6.baz="hello")
 x[1]
 # subsetting using $ name 
 x$foo 
 x[[1]] 
 x["bar"]
 x[c(1,2)]
 
 x <- list(a= list(12,14,45),b=34,c="hello")
 x[c(1,3)]
 # accesing the element inside another list by double bararckets 
 x[[1]][[3]]
 
 
 
 # sbusetting Matrix 
 
 x <- matrix(1:12 ,3,4 )
 x[2,3] # first row and second column 
 x[1:3,2:4] # first range or row using : operator and second range of column 
 # range mean from this to upto this 
 x[1,] # first row all the column 
 x [,2]
 
 # partial Matching 
 x <- list(bardvak=1:10)
 x$b # this will work with dollar sign 
 
 
 # subsetting the from na values 
 x <-c(1,2, NA,3,NA,5)
 bad <- is.na(x) 
 bad # this is logical vector 
 x[!bad] # but we need without NA values we will ! negate sign before bad 
 
 x <- c(1,2,NA,3,NA,5)
 y <- c("a",NA,'b',NA,"c","d")
 # we can use is.na to find the NA values in both vectors using complete.cases function 
 good <- complete.cases(x,y)
 x[good]
 y[good]
 

 write.csv(airquality,'data/airquality_2025.csv',row.names=FALSE)
 # reading the  airquality data 
 read.csv("data/airquality_2025.csv",header=TRUE,na.strings="NA") -> airquality
airquality[1:6,] 

good <- complete.cases(airquality)
#airquality[good,] # this will give the data without NA values
airquality[good,][1:6,] # this will give the first 6 rows of data without NA values

