########################################
# DATA MUNGING IN R
########################################

# In this R Script, I am going to save R dataframes and
# tibbles into various file formats
# I will use babynames dataset. This dataset can be accessed 
# by installing babynames package from CRAN
# install the package using install.packages('babynames') command

########################################
# 1. Save R dataframe as csv file
########################################

# Before I get started, I want to check where my current working 
# directory is
getwd()

# I want to change my working directory to the folder that I will be 
# saving all my 66 Days of Data work
setwd("C:\\Users\\BEN KOLE\\Desktop\\66_DAYS_OF_DATA")



# load babynames package  (I already installed it)
library(babynames)

# call the babynames dataset and assign it to a variable called
# babies_names
babies_names <- babynames

# view the dataset
View(babies_names)

# check the class of the dataset
class(babies_names)

# My dataset is an R tibble. I want to save it as a .csv file

write.csv(babies_names, 'babies_names.csv')

# checking the files in this directory shows me that there is
# a file called babies_names.csv (the newly saved file)
list.files()
