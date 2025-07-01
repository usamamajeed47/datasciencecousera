# conn  interfaces to the outtsided world 
# reading and writting data from files urls 

foo <- data.frame(x=1:10 ,y= letters[1:10])
# write this in text file 
dput(foo,file="data/foo.txt")
# read it back using file function of r 
conn <- file("data/foo.txt")
data <- dget(conn)
close(conn)
data
# now reading the csv file here 
# write the data frame to a csv file 
boo <- data.frame(x=20:30, y=letters[11:21])

write.csv(boo,file="data/boo.csv",row.names=FALSE)
# read the csv file

boo_data <- read.csv("data/boo.csv")
boo_data

# readinga compressed gzip file into r 
words <- c("1080","10-point","10th","11-point","11th","12-point","12th","13-point","13th","14-point","14th")
# writing this data into gzip compressed file 
con <- gzfile("data/words.gz","w")
writeLines(words, con)
close(con)
# reading the gzip compressed file
con <- file("data/words.gz","r")
x <- readLines(con)
x
# reading the data from internet 
con <- url("https://www.worldometers.info/population/china-eu-usa-japan-comparison/")
x <- readLines(con)
close(con)
head(x)
# writing this data into a text file 
con <- gzfile("data/worldometers.gz","w")
writeLines(x, con)
close(con)
