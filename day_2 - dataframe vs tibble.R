#######################################
# DATAFRAME VS TIBBLE - Difference?
#######################################

# Before I get started, I want to check where my current working 
# directory is
getwd()

# I want to change my working directory to the folder that I will be 
# saving all my 66 Days of Data work
setwd("C:\\Users\\BEN KOLE\\Desktop\\66_DAYS_OF_DATA")

#######################################
# 1. Creating dataframes in R
#######################################

# parse vectors into the data.frame() function
df_1 <- data.frame(name<-c('Ben', 'Monica', 'Lloyd', 'Cate'),
                 gender<-c('M', 'F', 'M', 'F'),
                 age<-c(22, 19, 30, 21))

# print the dataframe
df_1

# view the dataframe
View(df_1)

# structure of the dataframe 
str(df_1)

# print the class (type)
class(df_1)

# create vector objects
name <- c('Jose', 'Ken', 'Mitchell', 'Katrine')
gender <- c('M', 'M', 'F', 'F')
age <- c(40, 35, 27, 23)

# join the vector objects inside data.frame
# to form a dataframe object
df_2 <- data.frame(name, gender, age)

# print df_2
df_2

# check the class(type)
class(df_2)

#######################################
# 2. Creating tibbles in R
#######################################
# - To work with tibbles, we need to install
# the tibble package
# We can however opt to install tidyverse package 
# which is a collection of many packages including
# tibble
library(tidyverse)

# Convert the df_1 dataframe to tibble,
# using the as_data_frame() function.
tbl_1 <- as_data_frame(df_1)

# print the tibble
tbl_1

# Convert the df_1 dataframe to tibble,
# using the data_frame() function.
tbl_2 <- data_frame(df_1)

# Create a tibble using the frame_data()
# function. This is an outdated function.
tbl_3 <- frame_data(
  ~name, ~gender, ~age,
  'Mike', 'M', 21,
  'Mary', 'F', 20,
  'Ann', 'F', 24
)

# Create a tibble using the tribble() function.
# This is the modern function of creating a tibble.
tbl_4 <- tribble(
  ~name, ~gender, ~age,
  'Mike', 'M', 21,
  'Mary', 'F', 20,
  'Ann', 'F', 24
)

# print tbl_4
tbl_4

# view tbl_4
View(tbl_4)

# check the structure of tbl_4
str(tbl_4)