# Names 
# we can use names() to assign names to objects in R
# This is useful for vectors, lists, and data frames and 
# allows us to refer to elements by name rather than by index.
x<- 1:3 
names(x)

# Assigning names to a vector
names(x) <-c("foo", "bar", "baz")

x

m = matrix(1:4,nrow=2,ncol=2)
dimnames(m) <- list(c("row1", "row2"), c("col1", "col2"))
m
# Assigning names to a list
my_list <- list(a = 1, b = 2, c = 3)
names(my_list) <- c("first", "second", "third")
my_list
# Assigning names to a data frame
my_df <- data.frame(x = 1:3, y = 4:6)
names(my_df) <- c("Column1", "Column2")
my_df
# assiging names to rows and columns of a data frame
rownames(my_df) <- c("Row1", "Row2", "Row3")
my_df
# Accessing named elements
x["foo"]  # Accessing by name
