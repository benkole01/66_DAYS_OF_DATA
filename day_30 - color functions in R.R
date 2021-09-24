#######################################
# COLOR FUNCTIONS IN R
#######################################
# - These functions automatically generate vectors of n colors
# using specific color palettes

library(tidyverse)

cars <- mtcars
View(cars)

#######################################
# rainbow(n)
#######################################
ggplot(cars, aes(factor(vs)))+
  geom_bar(fill=rainbow(2))

#######################################
# heat.colors(n)
#######################################
ggplot(cars, aes(factor(vs)))+
  geom_bar(fill=heat.colors(2))

#######################################
# terrain.colors(n)
#######################################
ggplot(cars, aes(factor(vs)))+
  geom_bar(fill=terrain.colors(2))

#######################################
# topo.colors(n)
#######################################
ggplot(cars, aes(factor(vs)))+
  geom_bar(fill=topo.colors(2))

#######################################
# cm.colors(n)
#######################################
ggplot(cars, aes(factor(vs)))+
  geom_bar(fill=cm.colors(2))
