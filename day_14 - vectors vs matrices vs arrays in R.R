# VECTORS VS MATRICES VS ARRAYS

########################################################################
# VECTOR - It is a one dimensional R object containing 
# elements of one data type.
# The c() - concatenate- function is used to create vectors of multiple elements 
########################################################################
pets <- c('dog', 'cat', 'lion') # this is a vector of characters
print(pets)
class(pets)

########################################################################
# Matrix - is a two dimensional R object described by rows
# and columns. A matrix can take a vector as input.
# Matrix is created using the matrix() function
########################################################################
assets <- matrix(c('real estate', 'business', 'commodities', 'stock',
                   'crypto', 'index fund'), ncol=2, byrow = FALSE)
print(assets)
class(assets)

########################################################################
# ARRAY - is an R object similar to a matrix except that it
# can take any number of dimensions.
# An array can take both vectors and matrices as inputs.
# Array is created using the array() function.
# the dimensions of an array is specified using the dim argument.
########################################################################
# create an array from the pets vector
arr1 <- array(pets, dim = c(1,3,1))
print(arr2)
class(arr2)

# create an array from the assets matrix
arr2 <- array(assets, dim = c(3,2,1)) 
print(arr2)
class(arr2)

# this array takes both the pets vector and assets matrix as inputs
arr3 <- array(c(pets, assets), dim = c(1,3,2))
print(arr3)
class(arr3)

# this array contains 3 matrices of 5 by 3
arr4 <- array(1:45, dim = c(5,3,3))
print(arr4)
class(arr4)

########################################################################
# REFERENCE MATERIAL:- 
# R Programming by TutorialsPoint
########################################################################