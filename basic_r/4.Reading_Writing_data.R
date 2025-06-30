# Reading and writing data in R 

# read.table,read.csv, tabular data 
# read.lines, text file 
# source for reading R scripts files 
# dget for reading R objects
# load for reading R objects saved workspaces 
# unserialize for eading single R objects in binary form 

# writing 
# write.table, write.csv, tabular data
# writeLines, text file
# dump for writing R objects
# save for writing R objects saved workspaces
# serialize for writing single R objects in binary form
# saveRDS for writing single R objects in binary form

# create a table called foo,txt
foo <- data.frame(x = 1:10, y = letters[1:10])
# write the table to a file
write.table(foo,file="data/foo.txt")

# read the table from the file 
read.table("data/foo.txt")