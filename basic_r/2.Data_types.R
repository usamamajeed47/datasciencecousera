# variable assignment 
x <- 5 
# variable name >, assignment  operator, > value

msg <- "hello world" 

# Data types in R 
# Numeric
num <- 42.5
# Integer
int <- 42L  # 'L' indicates an integer 
# l is used to make int type of data 
# Character
char <- "R programming"
# Logical
log <- TRUE  # or FALSE
# Complex
comp <- 3 + 2i  # 'i' indicates the imaginary part

# Vector
vec <- c(1, 2, 3, 4, 5)  # 'c' combines values into a vector
# c function is used to make vector it is of same type of data unlike list 
# List
lst <- list(name = "Alice", age = 30, scores = c(90, 85, 88))  # can hold different types
# class function  
# this function tell us the type of data and data strcture we have 
print(class(vec)) 
print(class(lst))
print(class(int))
print(class(comp))
# conversion of Data types explicit Coercion
x <- 0:6
print(class(x))
as.numeric(x) # convert to numeric 
as.character(x) # converting to character type 
as.logical(x) # converting to logical type 
as.complex(x) 
as.vector(x)
as.list(x)# converting to complex type)
as.matrix(x) # converting to matrix type)

# creating data strctures 
# Matrix
# we can create matrix using matrix function with 
# data , no of rows and no cols arguement 
mat <- matrix(nrow=2,ncol=3)# empty matrix 
mat1<-matrix(1:9,nrow=3,ncol=3)
mat1
m <- 1:10 
dim(m) <-c(2,5) # another way of creating matrix using dim and c function specifiying 
# no of rows and columns 
m # matrix with data
x <- 1:3 
y <- 10:15 
cbind(x,y) # column bind function to creat matrix 
rbind(x,y) # row bind function to create matrix
# factor represent categorical data. they can be orderd ,
# unordered 
x <- factor(c("yes","no",'yes',"no"))
# we can crete them using factor function with c function 
# factor are like vector version of categoircal data 
table(x)
# we can use levels in factor function to define the unique values of 
# of factor data 

# Missing Values 
# NA represents missing values in R 
x <- c(1, 2, NA, 4, 5) 
# NA is used for missing values
x <- c(1, 2, NaN, 4, 5) # NaN is used for Not a Number
is.na(x) # check for missing values
is.nan(x) # check for NaN (Not a Number)
# these function will return logical vector of true and false
# Data Frames 
# data frame are like list but they all must same length 
# they are used to store tabular data
# we can create data frame using data.frame function
df <- data.frame(
  Name = c("Alice", "Bob", "Charlie"),
  Age = c(25, 30, 35),
  Score = c(90, 85, 88)
)
# data frames can be create using various method 
# like read csv file, reading table ,reading clipboard,
# using data.frame function 
# can we changed to matrix using as.matrix 
as.matrix(df) # matrix should same type of data
df
df <- data.frame(
  age= c(25, 30, 35),
  score = c(90, 85, 88)
)
m<-as.matrix(df)
m