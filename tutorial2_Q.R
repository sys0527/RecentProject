# Programming for Data Analysis
# Tutorial 2: Basic of R
#
# Topics Covered:
#       1. Use RStudio
#       2. Basic math
#       3. Assign/Remove variable
#       4. Data types: numeric, character, dates, logical, vector, factor vector
#       5. Searching for statistical function
#

# ~~~~~~~~~~~~~~~~~~~~~~ Question 1 ~~~~~~~~~~~~~~~~~~~~~~
# Try the basic math commands by typing the following expressions in the console
5+17
10-7
4*3*5
18/9
9%%4 #1
9%/%2
(5*8)+(12-7)

# ~~~~~~~~~~~~~~~~~~~~~~ Question 2 ~~~~~~~~~~~~~~~~~~~~~~
# Create a new R script as follows: Go to File->New File->R Script.

# ~~~~~~~~~~~~~~~~~~~~~~ Question 3 ~~~~~~~~~~~~~~~~~~~~~~
# Try variable assigning:
#     i.	Define a new variable, weeks, then assign 4 to it using the operator (<-).
#     ii.	Define a new variable, hoursPerWeek, then assign 40 to it using the operator (=).
#     iii.	Define a new variable, hourlyRate, then assign 50 to it using assign function.
# ====================== Answer ==========================
weeks<- 4
hourPerWeek = 40
assign ('hourlyRate',50)  
# ~~~~~~~~~~~~~~~~~~~~~~ Question 4 ~~~~~~~~~~~~~~~~~~~~~~
# Try removing a variable:
#     i.	Define a new variable, x, then assign 100 to it.
#     ii.	Remove the variable x using rm function.
# ====================== Answer ==========================
x = 100
x
rm(x)

# ~~~~~~~~~~~~~~~~~~~~~~ Question 5 ~~~~~~~~~~~~~~~~~~~~~~
# Dealing with numeric data (float or double in other language)
#     i.	Check variables' types using class function.
#     ii.	Convert the variable week to integer by appending L after its value. 
#         Then check its class. 
#     iii.	Try using the following functions:
#           is.numeric(weeks)
#           is.numeric(hourlyRate)
#           is.integer(weeks)
#           is.integer(hourlyRate)
# ====================== Answer ==========================
class(weeks)
weeks = 4L
is.numeric(weeks)
is.numeric(hourlyRate)
is.integer(weeks)
is.integer(hourlyRate)
# ~~~~~~~~~~~~~~~~~~~~~~ Question 6 ~~~~~~~~~~~~~~~~~~~~~~
# Define the following variables:
#     i.	bonus as integer and assign 1000 to it.
#     ii.	tax as numeric and assign 0.2 to it.
#     iii.	Calculate the gross salary.
# Note: You created hourlyRate and weeks in last question
# ====================== Answer ==========================
bonus = as.integer(1000)
tax = as.numeric(0.2)
grossSalary = (hourPerWeek * weeks * hourlyRate) * (1-tax) + bonus
print(paste("My gross salary is: RM", grossSalary))

# ~~~~~~~~~~~~~~~~~~~~~~ Question 7 ~~~~~~~~~~~~~~~~~~~~~~
# Define a new character variable, check its class, and check its length using nchar function.
# ====================== Answer ==========================
name = "Sim Yoke Shin"
class(name)
nchar(name) #13
# ~~~~~~~~~~~~~~~~~~~~~~ Question 8 ~~~~~~~~~~~~~~~~~~~~~~
# Try defining Dates and POSIXct data types:
#     birthdate<-as.Date("1980-1-1")
#     joinDate<-as.POSIXct("2019-10-11 08:00:00")
# i.	Check their classes.
# ====================== Answer ==========================
birthdate <- as.Date("2001-05-27")
class(birthdate)
joinDate<- as.POSIXct("2020-6-1 08:00:00")
class(joinDate)
# ~~~~~~~~~~~~~~~~~~~~~~ Question 9 ~~~~~~~~~~~~~~~~~~~~~~
# Define a new logical variable, hasInsurance, and assign TRUE to it, check its class, 
# and try using is.logical(hasInsurance).
# ====================== Answer ==========================
hasInsurance <- TRUE
hasInsurance = T
class(hasInsurance)
is.logical(hasInsurance)
# ~~~~~~~~~~~~~~~~~~~~~~ Question 10 ~~~~~~~~~~~~~~~~~~~~~
# Define 5 variables to store the marks for 5 students in a test. 
# The marks must be any value in the range 0-30.
# Use "Help" to search how to use 'runif'
# ====================== Answer ==========================
set.seed(123)
test_Sim = runif(1,min=0,max=30)
test_Yap = runif(1,min=0,max=30)
test_Ong = runif(1,min=0,max=30)
test_Emerson = runif(1,min=0,max=30)
test_Brian = runif(1,min=0,max=30)

# ~~~~~~~~~~~~~~~~~~~~~~ Question 11 ~~~~~~~~~~~~~~~~~~~~~
# Define 5 variables to store the marks for the 5 students in the final exam. 
# The marks must be any value in the range 0-70.
# Use "Help" to search how to use 'runif'
# ====================== Answer ==========================
set.seed(2)
exam_Sim = runif(1,min=0,max=70)
exam_Yap = runif(1,min=0,max=70)
exam_Ong = runif(1,min=0,max=70)
exam_Emerson = runif(1,min=0,max=70)
exam_Brian = runif(1,min=0,max=70)


# ~~~~~~~~~~~~~~~~~~~~~~ Question 12 ~~~~~~~~~~~~~~~~~~~~~
# Define 5 variables to store the total marks for the 5 students in the test and final exam.
# ====================== Answer ==========================
total_Sim = exam_Sim+test_Sim
total_Yap = exam_Yap + test_Yap
total_Ong = exam_Ong +test_Ong
total_Emerson = exam_Emerson +test_Emerson
total_Brian =exam_Brian+test_Brian


# ~~~~~~~~~~~~~~~~~~~~~~ Question 13 ~~~~~~~~~~~~~~~~~~~~~
# Use vectors to do the questions 10-12. For example, test1_Marks, final_Marks, 
# and total_Marks contains the marks in test1, final exam, and the summation of all marks, 
# respectively.
# ====================== Answer ==========================
set.seed(1234)
test= runif(5,min=0,max=30)
test
exam = runif(5,min=0, max=70)
exam

total=test+exam
total

a=c(1,2,3,4)   # (1, 2, 3, 4)
b=c(2,4)       # (2, 4, 2, 4)
#b=c(2,4,6) will show error
a+b            #  3  6  5  8
a/b

# ~~~~~~~~~~~~~~~~~~~~~~ Question 14 ~~~~~~~~~~~~~~~~~~~~~
# Give names to each final marks in total_Marks to represent students' 
# names by using names function.
# ====================== Answer ==========================
names(total) = c("Sim","Yap","Ong","Emerson","Brian")
total

# ~~~~~~~~~~~~~~~~~~~~~~ Question 15 ~~~~~~~~~~~~~~~~~~~~~
# Define a new vector, pass, that contains a logical value TRUE if the student's 
# total mark is greater than or equal 50.
total >= 50
total[total<50]#only see who fail

# ~~~~~~~~~~~~~~~~~~~~~~ Question 16 ~~~~~~~~~~~~~~~~~~~~~
# Find the minimum, maximum, mean, and median values of total_Marks vector using min, 
# max, mean, and median functions, respectively.
# ====================== Answer ==========================
#mean
mean(total)
total[total>=mean(total)]

#max
max(total)
total[total == max(total)]

#min
min(total)
total[total == min(total)]

#median
median(total)
total[total == median(total)]


# ~~~~~~~~~~~~~~~~~~~~~~ Question 17 ~~~~~~~~~~~~~~~~~~~~~
# Try applying these functions:
#   round(547.8)
#   length(total_Marks)
#   sqrt(9)
#   substr("abcd", 2,4)
#   strsplit("hello world", " ")
#   paste("welcome to", "PFDA")
# ====================== Answer ==========================
round(547.8)
length(total)
sqrt(9) #??????
substr("abcd", 2,4)
strsplit("hello world", " ")
paste("welcome to", "PFDA")
cat("welcome to", "PFDA")

# ~~~~~~~~~~~~~~~~~~~~~~ Question 18 ~~~~~~~~~~~~~~~~~~~~~
# Trying using factors:
#   data <-c(1,2,2,3,1,2,3,3,1,2,3,3,1)
#   data
#   fdata <-factor(data)
#   fdata
#   str(fdata)
#   rdata= factor(data,labels=c("I","II","III"))
#   rdata
# ====================== Answer ==========================
data <-c(1,2,2,3,1,2,3,3,1,2,3,3,1)
data
fdata <-factor(data)
fdata #?????????????????????,???????????????
str(fdata)
rdata= factor(data,labels=c("I","II","III"))
rdata


# ~~~~~~~~~~~~~~~~~~~~~~ Question 19 ~~~~~~~~~~~~~~~~~~~~~
# Piping:
#   install.packages("magrittr")
#   library(magrittr)
# Assign x with 1:10
# Calculate the mean of the vector
# Use '%>%' to calculate the mean of vector
# ====================== Answer ==========================
install.packages("dplyr")
install.packages("ggplot")
library(ggplot2)
library(dplyr)
x = 1:10
mean(x)
x %>% mean %>% rep(5)

# x %>%
#   select() %>%
#   filter() %>%
#   group_by() %>%
#   summarise() %>%
#   ggplot() + geom_bar()
# y = filter(x)
# z = group_by(y)

  
# ~~~~~~~~~~~~~~~~~~~~~~ Question 20 ~~~~~~~~~~~~~~~~~~~~~
# Missing Value:
#   z <- c(1, 2, NA, 8, 3, NA, 3)
# Check the vector with is.na()
# Calculate the mean of the vector (na.rm=TRUE)
# Use sum() to count number of missing value
# ====================== Answer ==========================
z <- c(1, 2, NA, 8, 3, NA, 3)
mean(z) #count combine NA
mean(z,na.rm=T)
is.na(z)
# ~~~~~~~~~~~~~~~~~~~~~~ Question 21 ~~~~~~~~~~~~~~~~~~~~~
# Missing Value 2:
#   z <- c(1, NULL, 3)
# Check the vector with is.null()
# ====================== Answer ==========================

