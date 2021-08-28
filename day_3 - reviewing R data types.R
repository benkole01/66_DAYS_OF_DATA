######################################
# R DATA TYPES
######################################

setwd("C:\\Users\\BEN KOLE\\Desktop\\66_DAYS_OF_DATA")

# 1. Numeric - continous numbers
num_1 <- 2.3 # this is numeric
class(num_1)

num_2 <- 5 # this is also numeric
class(num_2)
  
# 2. Integer - whole numbers
  # an integer is declared by adding an L
  # at the end of a whole number
int_1 <- 8L 
class(int_1)

int_2 <- 100L
class(int_2)

  # - By default, whole numbers without L at the end 
  # are treated as numerics (see num_2). 

# 3.Character - these are alphanumeric values (strings)
name <- 'Jerry'
class(name)

secret_code <- '@123KlmA'
class(secret_code)

# 4. Logical
  # These are boolean values, TRUE or FALSE
night <- TRUE # I wrote this code at night
print(night)
class(night)

day <- FALSE
print(day)
class(day)

# 5. Complex - imaginary numbers
  # they are numbers that have i as the imaginary part
complex_num <- 10 + 2i
class(complex_num)

complex_num2 <- 2 + 0i
class(complex_num2)
