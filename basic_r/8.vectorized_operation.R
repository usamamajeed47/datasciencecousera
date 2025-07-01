# vectorized operation in r 
# many operaton can be done in a vectorized way in R without doing in # for loop 
x <- 1:4
y<-6:5
x+y 

x >2 

# matrix operation  
x <-matrix(1:6,nrow=2,ncol=3);y<-matrix(6:11,nrow=2,ncol=3)
x+y
# element wise multiplication
x * y
# matrix multiplication
x <- matrix(1:4,nrow=2,ncol=2);y<-matrix(6:9,nrow=2,ncol=2)
x %*% y
# element wise division
x/y
