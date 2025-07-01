# storing tabular data in text foramt 
# using dput and dump function s
# dput() is used to store R objects in a text format

x <- data.frame(a=10,b=10)
dput(x)

# saving to the file 
dput(x,file="data/x.R")
# reading the data back

new.y <- dget("data/x.R")
new.y

# dput can be used only on signle r object 
# while dump() can used with mutliple r object 
x <-"foo" 
y <- data.frame(a=1,b="a")
dump(c("x","y"),file="data/dump.R")
rm(x,y) # removing the data from the enviroment 
# reading the data bac
source("data/dump.R")

