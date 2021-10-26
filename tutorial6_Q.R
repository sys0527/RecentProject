# Programming for Data Analysis
# Tutorial 6: Data Import
#
# Topics Covered:
#       1. Read data
#

# ~~~~~~~~~~~~~~~~~~~~~~ Question 1 ~~~~~~~~~~~~~~~~~~~~~~
# Write a program to access and print the following data set included in R:
# a.	AirPassengers in datasets package.
# b.	economics in ggplot2 package.
# ====================== Answer ==========================
data("AirPassengers")
View(AirPassengers)
data("economics")
View(economics)
# ~~~~~~~~~~~~~~~~~~~~~~ Question 2 ~~~~~~~~~~~~~~~~~~~~~~
# Create a text file manually and save the following content in it:
# 12000
# 7000
# 9000
# 6000
# 8000
# Then, write a program read this file and print the minimum, maximum, and 
# average values.
# ====================== Answer ==========================
# Create text file : make sure you know the location of the text file.  
# This example is running on Mac machine, The path for windows will be different. 
myData = readLines("C:\\Users\\Owner\\Downloads\\Sales.csv")
print(myData)
myData = as.integer(myData)
cat("Minimun =",min(myData))
cat("Maximum =",max(myData))
cat("Average =",mean(myData))

# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] "Minimum =  6000"
# [1] "Maximum = 12000"
# [1] "Average =  8400"


# ~~~~~~~~~~~~~~~~~~~~~~ Question 3 ~~~~~~~~~~~~~~~~~~~~~~
# Write an R program to read the content of a CSV file located in the following 
# link http://www.jaredlander.com/data/TomatoFirst.csv . Check the class of the file.
# ====================== Answer ==========================
tomato = read.csv("http://www.jaredlander.com/data/TomatoFirst.csv")

# a.	Return how many rows and columns in this file.
# ====================== Answer ==========================
nrow(tomato)
ncol(tomato)
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] 16
# [1] 11

# b.	Return the details of the least Sweet tomato type.
# ====================== Answer ==========================
leastSweet = tomato[tomato$Sweet == min(tomato$Sweet),]
View(leastSweet)
View(tomato)
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
#    Round             Tomato Price     Source Sweet Acid Color Texture Overall Avg.of.Totals
# 11     3 Scotts Backyard SM     0 Home Grown   1.6  2.9   3.1     2.4     1.9          11.9
# Total.of.Avg
# 11         11.9

# c.	Return the summation of prices when the Source is "Whole Foods".
# ====================== Answer ==========================
tomato$Price[tomato$Source == "Whole Foods"]
tomato[tomato$Source == "Whole Foods","Price"]
sum(tomato[tomato$Source == "Whole Foods",]$Price)
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] 12.06


# ~~~~~~~~~~~~~~~~~~~~~~ Question 4 ~~~~~~~~~~~~~~~~~~~~~~
# Write an R program to read the content of third sheet in an excel file located 
# in the following link http://www.jaredlander.com/data/ExcelExample.xlsx .
# ====================== Answer ==========================
download.file(url = "http://www.jaredlander.com/data/ExcelExample.xlsx",
              destfile ="C:\\Users\\Owner\\Downloads\\ExcelExample.xlsx",
              mode = "wb")
install.packages("Rcpp")
install.packages("readxl")
library(readxl)
library(Rcpp)
excelData =read_excel(path = "C:/Users/Owner/Downloads/ExcelExample.xlsx",sheet = 3)
View(excelData)
# - - - - - - - - - - - - Exercise - - - - - - - - - - - -

# ~~~~~~~~~~~~~~~~~~~~~~ Exercise 1 ~~~~~~~~~~~~~~~~~~~~~~
# Write a function to calculate the number of missing value of a column.
# Use numeric variable as index.
# ====================== Answer ==========================
cal_miss = function(data, variable) {
    count = sum(is.na(data[variable]))
    cat("There are",count,"missing value in",names(data[variable]))
}

sales = read.csv("C:/Users/Owner/Downloads/Sales.csv")
cal_miss(sales, 1)
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] "There are 2 missing values in Country"

cal_miss(sales, 2)
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] "There are 1 missing values in Age"

cal_miss(sales, 3)
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] "There are 1 missing values in Salary"


# ~~~~~~~~~~~~~~~~~~~~~~ Exercise 2 ~~~~~~~~~~~~~~~~~~~~~~
# Write a program that fill the missing value with
# a) constant value (user-defined) for Age and Salary
# ====================== Answer ==========================
sales_constant = sales
sales_constant$Age[is.na(sales_constant$Age)] = 25
sales_constant$Salary[is.na(sales_constant$Salary)] = 600000
sales_constant
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
#    Country Age Salary Purchased
# 1   France  44  72000        No
# 2    Spain  27  48000       Yes
# 3  Germany  30  54000        No
# 4    Spain  38  61000        No
# 5     <NA>  40  60000       Yes
# 6   France  35  58000       Yes
# 7    Spain  25  52000        No
# 8   France  48  79000       Yes
# 9  Germany  50  83000        No
# 10    <NA>  37  67000       Yes

# b) mean value for Age
# ====================== Answer ==========================
sales_mean = sales
sales_constant$Age[is.na(sales_mean$Age)] = mean(sales_mean$Age,na.rm=T)
sales_mean
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# Enter value for radius (cm): 10

# c) median value for Salary
# ====================== Answer ==========================
sales_median = sales
sales_median$Salary[is.na(sales_median$Salary)] = median(sales_median$Salary,na.rm=T)
sales_median
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# Enter value for radius (cm): 10

# d) mode value for Country
# ====================== Answer ==========================
install.packages("DescTools")
library(DescTools)
sales_mode = sales
sales_mode$Salary[is.na(sales_mode$Salary)] = mode(sales_mode$Salary,na.rm=T)
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# Enter value for radius (cm): 10


# ~~~~~~~~~~~~~~~~~~~~~~ Exercise 3 ~~~~~~~~~~~~~~~~~~~~~~
# Write a function to calculate the time in hours, minutes and seconds
# from input in seconds.
# ====================== Answer ==========================
cal_time = function(time) {
    hour = time %/% 3600
    minute = (time- hour * 3600) %/% 60
    second =time-hour*3600-minute*60
    cat("The total time is",hour,"minutes",minute,"Second",second)
}

cal_time(7623)
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] "The total time is 2 hours 7 minutes 3 seconds"


# ~~~~~~~~~~~~~~~~~~~~~~ Exercise 4 ~~~~~~~~~~~~~~~~~~~~~~
# Write a program to ask the user input the width, length and height in cm 
# of the water tank. A water pipe is filling up water in 100 mL(cm3) per seconds. 
# Calculate the time needed to wait until the tank become full and return the 
# time in seconds. 
# Note: Flow Speed = Volume/Time
#       1 cm^3 = 1 mL
# ====================== Answer ==========================
cal_tank = function(width, length, height) {
    volume = width * length * height
    time = volume /100
    return(as.integer(time))
}

fill_time = cal_tank(100, 100, 100)
cal_time(fill_time)
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# "The total time is 2 hours 46 minutes 40 seconds"

