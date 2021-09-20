# set working directory to the folder that contains the data
setwd("C:\\Users\\BEN KOLE\\Desktop\\R_PROGRAMMING\\Data_Analysis\\SURVIVAL_ANALYSIS")

# load the data using readr package
library(readr)
patients <- read_delim('Survival Analysis.txt', delim='\t')
patients
View(patients)

###########################################################
# EXPLORATORY DATA ANALSIS ON THE DATA
###########################################################
# check the structure of the data
str(patients)

# let gender, group and symptoms columns be factors
patients$Gender <- as.factor(patients$Gender)
patients$Group <- as.factor(patients$Group)
patients$Symptoms <- as.factor(patients$Symptoms)

# check structure again
str(patients)

# Summary statistics of the data
summary(patients)

# How is the age distribution of the patients?
par(mfrow=c(1,2)) #this partitions the rows and columns
hist(patients$Age, xlab='age', ylab='frequency', main='Histogram Showing Age Distribution')
boxplot(patients$Age, main='Box Plot Showing Age Distribution')

# How was the gender distribution?
par(mfrow=c(1,1))
plot(patients$Gender, main='Gender Distribution', xlab='gender', ylab='proportion')

# Which groups of patients were there?
par(mfrow=c(1,1))
plot(patients$Group, main='Alcoholic Group Distribution', xlab='group', ylab='proportion')

# How did the symptoms vary in the patients?
par(mfrow=c(1,1))
plot(patients$Symptoms, main='Symptoms Distribution', xlab='symptom', ylab='proportion')
