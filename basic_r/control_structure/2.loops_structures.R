# loops for loop 
# for loop let you iterate over a iterable object for a fixied number of times defined in 
# first condtion 

for (i in 1:10) {
  print(i)
}
# for loop can also be used to iterate over a vector or list
x <- c("a", "b", "c", "d")
for (i in 1:4) {
  print(x[i])
}

for (i in seq_along(x)) {
  print(x[i])
}

for (letter in x) { 
  print(letter)}
# nested for loops 
x <- matrix (1:6,2,3)
for (i in seq_len(nrow(x))) {
  for (j in seq_len(ncol(x))) {
    print(paste("Row:", i, "Column:", j, "Value:", x[i, j]))
  }
}

# while loops 
count <- 0
while (count < 10) {
  print(count)
  count <- count + 1
}

z <-5 
while (z >=3 && z <=10) {
  print(z)
  coin <- rbinom(1, 1, 0.5)
  if (coin==1){
    z <- z + 1
  } else {z <- z - 1
  }
}