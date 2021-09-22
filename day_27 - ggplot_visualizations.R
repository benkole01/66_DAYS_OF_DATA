###############################################
# GGPLOT2 VISUALIZATIONS
###############################################

# load required package(s)
library(tidyverse)

# Load the mtcars dataset built in R
cars <- mtcars
View(cars)

##############################################
# Scatter Plot with GGPLOT2
##############################################
# create a scatter plot using qplot() function
qplot(x = mpg, y = wt, data = cars, main = 'Relation of Miles Vs Weight of a Car')

# let both x-axis and y-axis start at 0
qplot(x = mpg, y = wt, data = cars, ylim = c(0,10), xlim = c(0,35))

# create a scatter plot using ggplot() function
ggplot(data = cars, mapping = aes(x=mpg, y=wt))+
  geom_point()+ # creates a scatter plot
  # add a title
  ggtitle('Relation of Miles Vs Weight of a Car')

##############################################
# Line Graph with GGPLOT2
##############################################
ggplot(data = cars, mapping = aes(x = mpg, y = wt))+
  geom_line() # creates a line graph

# line graph with a title
ggplot(data = cars, mapping = aes(x=disp, y=mpg))+
  geom_line()+
  ggtitle('Relation of Displacement And Miles')

# plotting both points and lines
ggplot(data = cars, mapping = aes(x=disp, y=mpg))+
  geom_line()+
  geom_point()

##############################################
# Bar Graph with GGPLOT2
##############################################
# bar graph is for factors/categories
# create a bar plot using qplot() function
qplot(factor(cars$vs))

qplot(as.factor(cars$vs), xlab='Engine Type', ylab='Counts')

# create a bar plot using ggplot() function
ggplot(cars, aes(factor(vs)))+
  geom_bar(fill=c('green', 'blue'))

##############################################
# Histogram with GGPLOT2
##############################################
# create a histogram using qplot() function
qplot(cars$disp)

# create a histogram using ggplot() function
ggplot(cars, aes(x=disp))+
  geom_histogram()

ggplot(cars, aes(x=disp))+
  # specify the number of bins to use
  geom_histogram(binwidth = 50)


##############################################
# Boxplot with GGPLOT2
##############################################

# create a boxplot using ggplot() function
ggplot(cars, aes(x=disp))+
  geom_boxplot(fill='blue')
