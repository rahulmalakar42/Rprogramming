# VECTOR

# Vectors in R are the same as the arrays in C language which are used to hold multiple data values of the same type. One major key point is that in R the indexing of the vector will start from ‘1’ and not from ‘0’.

v1 <- c(4, 5, 6, 7) #creating vector using c() function

# display type of vector
# typeof(v1)

# by using 'L' we can specify that we want integer values.
v2 <- c(1L, 4L, 2L, 5L) 
  
# display type of vector
# typeof(v2)

# seq() function for creating
# a sequence of continuous values.
# length.out defines the length of vector.
Y <- seq(1, 10, length.out = 4) 
# cat('using seq() function', Y, '\n') 

# use':' to create a vector 
# of continuous values.
Z <- 2:7
# cat('using colon', Z)

# by passing a range of values
# inside the vector index.
Y <- c(4, 8, 2, 1, 17)
# cat('Using combine() function', Y[c(1,2,3)], '\n')
  
# using logical expressions
Z <- c(5, 2, 1, 4, 4, 3)
# cat('Using Logical indexing', Z[Z>2])

# Sort in ascending order
A <- sort(Z) #vector name Z, sorted vector is A

# sort in descending order 
# by setting decreasing as TRUE
B <- sort(Z, decreasing = TRUE)
# cat('descending order', B)

x <- 1:5
n <- letters[1:5]
 
# Append
y <- c(x, n) # "1" "2" "3" "4" "5" "a" "b" "c" "d" "e"
 
# Append using append() function
y <- append(y, 6:10) #"1"  "2"  "3"  "4"  "5"  "a"  "b"  "c"  "d"  "e"  "6"  "7"  "8"  "9"  "10"

#LISTS

#A list is a vector but with heterogeneous data elements. A list in R is created with the use of list() function. R allows accessing elements of a list with the use of the index value. In R, the indexing of a list starts with 1 instead of 0 like other programming languages.  

empId = c(1, 2, 3, 4)
empName = c("Debi", "Sandeep", "Subham", "Shiba")
numberOfEmp = 4

# We can combine all these three different
# data types into a list
# containing the details of employees
# which can be done using a list command
empList = list(empId, empName, numberOfEmp)

empList = list(
  "ID" = empId,
  "Names" = empName,
  "Total Staff" = numberOfEmp
  )

# cat("Accessing name components using $ command\n")
# print(empList$Names)

#Access components by indices
# print(empList[[1]])

#concatenation of lists
# Creating another list
empAge = c(34, 23, 18, 45)
empAgeList = list(
  "Age" = empAge
)
 
# Concatenation of list using concatenation operator
empList = c(empList, empAgeList)

# Deleting components of a list

# To delete components of a list, first of all, we need to access those components and then insert a negative sign before those components

# print(empList[-3])

# Convert the lists to vectors.
# vec <- unlist() # list name inside bracket


#MATRIX
A = matrix(
     
  # Taking sequence of elements 
  c(1, 2, 3, 4, 5, 6, 7, 8, 9),
   
  # No of rows
  nrow = 3,  
   
  # No of columns
  ncol = 3,        
   
  # By default matrices are in column-wise order
  # So this parameter decides how to arrange the matrix
  byrow = TRUE         
)
# Naming rows
rownames(A) = c("a", "b", "c")
  
# Naming columns
colnames(A) = c("c", "d", "e")
# print(A)

# Matrix having 3 rows and 3 columns
# filled by a single constant 5
# print(matrix(5, 3, 3))

# Diagonal matrix having 3 rows and 3 columns
# filled by array of elements (5, 3, 3)
# print(diag(c(5, 3, 3), 3, 3))

# Identity matrix having
# 3 rows and 3 columns
# print(diag(1, 3, 3))

# cat("Dimension of the matrix:\n")
# print(dim(A))
 
# cat("Number of rows:\n")
# print(nrow(A))
 
# cat("Number of columns:\n")
# print(ncol(A))
 
# cat("Number of elements:\n")
# print(length(A))
# # OR
# print(prod(dim(A)))

# Accessing first and second row
# cat("Accessing first and second row\n")
# print(A[1:2, ])

# Accessing first and second column
# cat("Accessing first and second column\n")
# print(A[, 1:2])

#DATA FRAMES

# mat = matrix(1:9,3)
# print("Original Matrix :-")
# print(mat)
# mat = t(apply(mat,2,rev))
# mat = t(apply(mat,2,rev))
# print("Matrix after Rotation :-")
# print(mat)
# print("Data Frame :-")
# data = data.frame(Name = c("Upam","Partho","Robin","Laditya","Rahul"),
#                   Roll = c(006,003,004,019,022),
#                   Jobs = c("Berozgaar","Apple","Facebook","Athlete","Fashion Designer"))
# print(data)   

#FUNCTION DEFINITION AND FUNCTION CALL

# powr = function(a,b)
# {
#   res = 1
#   while (b)
#   {
#     if (bitwAnd(b,1))
#     {
#       res = res* a
#     }
#     a =a* a
#     b = b/2
#   }
#   return(res)
# }
# print(paste("2 to the power 10 is = ",powr(2,10)))

#ASSOCIATIVE ARRAY


# install.packages("hash")
library(hash)

# my_hash <- hash()
# my_hash[["apple"]] <- 42
# my_hash[["banana"]] <- 12

# my_hash[["apple"]] # returns 42

my_hash <- hash()
my_hash["key1"] <- "value1"
my_hash["key2"] <- "value2"
print(my_hash[["key1"]]) # prints "value1"
print(my_hash[["key2"]]) # prints "value2"
for (key in names(my_hash)) {
  value <- my_hash[[key]]
  print(paste(key, value))
}


