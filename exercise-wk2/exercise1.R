## Part 1: Debugging

my.num <- 6
initials <- "?. ?."

my.vector <- c(my.num, initials)

# run ?sum to get more info
vector.sum <- sum(my.vector)
?sum

# Describe why this doesn't work: 
# Because it is adding a numerical value with a 'logical' value which is considered invalid
#as if there is a character than the sum turns to NA whereas if all numerical it would output. 

install.packages("stringr")
library("stringr")
my.line <- "Hey, hey, this is the library"

print(str_length(my.line))


# Describe why this doesn't work: 
# Becuase you need to have the library loaded in the code. 'library("stringr")'

said.the.famous <- paste(my.line, "-" ,  initial)

# Describe why this doesn't work: 
# The variable does not work because it should be initals, not just inital. 


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
new.vector <- c(1,2,3)
typeof(new.vector)
# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(v1, v2) {
  combination <- abs(v1 - v2)
  paste("The difference is lengths is",combination)
}
# Pass two vectors of different length to your `CompareLength` function
new.v <- c(1,3,5,6,2)
updated.v <- c(4, 5,6,7,8,3)
CompareLength(new.v, updated.v)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"

DescribeDifference <- function(v1, v2){
  if(v1 > v2){
    compute.v1 <- abs(v1 - v2) 
    paste("Your first vector is longer by", compute.v1, "elements")
  } else {
    compute.v2 <- abs(v2 - v1)
    paste("Your second vector is longer by", compute.v2, "elements")
  }
  
}

# Pass two vectors to your `DescribeDifference` function
DescribeDifference(new.v, updated.v)

# Write a function `CombineVectors` that takes in 3 vectors and combines them into one
CombineVectors <- function(v1, v2, v3) {
  all.combined <- v1 + v2 + v3 
  return(all.combined)
}

# Send 3 vectors to your function to test it.
third.vector <- c(2, 5,1 ,6 ,7, 8, 9)
CombineVectors(new.v, updated.v, third.vector)

# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters
course.new <- "Info 201"
CapsTime <- function(course) {
  str_trime(gsub("[A-Z]", course.new)
}
?sub

CapsTime(course.new)
  