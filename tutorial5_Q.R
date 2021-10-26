# Programming for Data Analysis
# Tutorial 5: Functions
#
# Topics Covered:
#       1. Functions
x=25
ifelse(x >= 0, sqrt(x), NA)
a <- matrix(-3:5, 3, 3)
if(a[]<0){
    a=0
}
# ~~~~~~~~~~~~~~~~~~~~~~ Question 1 ~~~~~~~~~~~~~~~~~~~~~~
# Write a R program that show your first and last name on the screen.
# ====================== Answer ==========================
# Create function
hello.person = function(first, last) {
    # Write your code here
    paste("HELLO",first,last)
}

# Call function
hello.person("YokeShin","Sim")
# Write your code here
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# hello.person("YEEJING", "LIEW")
# [1] "Hello YEEJING LIEW"


# ~~~~~~~~~~~~~~~~~~~~~~ Question 2 ~~~~~~~~~~~~~~~~~~~~~~
# Write a R program to check a number is above n. 
# If yes return TRUE, else FALSE
# ====================== Answer ==========================
# Assign 10 random number within 0 to 100 into a vectpr
x = sample(0:100,10); x
# Create Function
above <- function(x, n = 50) {
    # Write your code here
    use = x>n
    x[use]
    
}

# Call Function
above(x, 20)
above(x)

# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# > x = sample(0:100,10); x
# [1] 27 69 24 14  7  0  2 36 86 62
# > above(x, 20)
# [1] 27 69 24 36 86 62
# > above(x)
# [1] 69 86 62


# ~~~~~~~~~~~~~~~~~~~~~~ Question 3 ~~~~~~~~~~~~~~~~~~~~~~
# Write a R program to import Iris data.
# ====================== Answer ==========================
getwd()
setwd("C:/Users/Owner/Documents/R/codes/")
Iris<-read.csv("C:/Users/Owner/Documents/R/codes/Iris.csv")
View(Iris)


# - - - - - - - - - - - - Exercise - - - - - - - - - - - -

# ~~~~~~~~~~~~~~~~~~~~~~ Exercise 1 ~~~~~~~~~~~~~~~~~~~~~~
# Write a program which accepts the radius of a circle from the user. Then,
# calculate the diameter, circumference, or area of a circle based on user's
# choice. Develop a function to perform the calculation.
# Formula: diameter [2 * radius] ; circumference [2 pi * radius] ; area [pi* radius2]
# ====================== Answer ==========================
# Create Function
area = function(r) {
    # Write your code here
}
circumference = function(r) {
    # Write your code here
}
diameter = function(r) {
    # Write your code here
}

# Main Function
calCircle = function() {
    # Write your code here
}

# Call Function
calCircle()
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# Enter value for radius (cm): 10
# Calculate:
# (A)rea
# (C)ircumference
# (D)iameter
# Option: A
# The area of the circle in cm is 314.2


# ~~~~~~~~~~~~~~~~~~~~~~ Exercise 2 ~~~~~~~~~~~~~~~~~~~~~~
# Write a program using functions to reverse the digits of an integer number.
# Create reverse() function and call findReverse() as main function
# ====================== Answer ==========================
# Create Function
reverse = function(value) {
    temp = 0
    reverse = 0
    while(value>0){
        temp = value %% 10
        value = as.integer(value/10)
        reverse = reverse*10 + temp
    }
    return(reverse)
}

# Main Function
findReverse = function() {
    # Write your code here
    # Write your code here
    number = as.integer(readline("Enter a number between 1 and 999:"))
    print(paste("The number with its digits reserved is:" , reverse(number)))
    
}

# Call Function
findReverse()
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# Enter a number between 1 and 9999: 9273
# The number with its digits reversed is: 3729



# ~~~~~~~~~~~~~~~~~~~~~~ Exercise 3 ~~~~~~~~~~~~~~~~~~~~~~
# One large detergent company pays its salespeople on a commission basis.
# The salespeople receive a salary of RM100 per week plus 15% of their gross sales
# for that week. For example, a salesperson who sells RM5000 worth of detergent
# in a week receives RM100 plus 15% of RM5000, or a total of RM850. Write a program
# using functions that accept salesperson's gross sales for last week then calculate
# and display that person's sales earnings.
# ====================== Answer ==========================
# Create Function
Earning = function() {
    # Write your code here
    gross.sales = as.numeric(readline("enter sales:"))
    print(paste("Salaries is",(gross.sales* 0.15)+100))
}

# Call Function
Earning()
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# Enter sales: 5000
# Salary is RM 850.00


# ~~~~~~~~~~~~~~~~~~~~~~ Exercise 4 ~~~~~~~~~~~~~~~~~~~~~~
# Use the concept of functions to write a program to calculate the factorial of
# an integer.
# Formula: 4! = 1*2*3*4
# ====================== Answer ==========================
# Create Function
calFactorial = function() {
    # Write your code here
    value = as.integer(readline("Enter integer:"))
    fac = 1
    temp =value
    while (temp>0){
        fac = fac * temp
        temp = temp -1
    }
    print(paste(value,"!=",fac))
}

# Call Function
calFactorial()
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# Enter an integer: 7
# 7! = 5040


# ~~~~~~~~~~~~~~~~~~~~~~ Exercise 5 ~~~~~~~~~~~~~~~~~~~~~~
# Write a function that include the given header
# The function should identify the id selected and calculate the mean of selected column
# Please check variable is input correctly. Return invalid if wrong input
# ====================== Answer ==========================
# Create Function
# --------------------------------------------------------
# Function: Calculate mean of VARIABLE within FILE with specific ID
# 
# Input:
# file      = input data name (in csv)
# variable  = one or more than one variable from data
# id        = select which sample, default would select all
# 
# Output:
# numeric   = mean of the selected row/s and column/s
# --------------------------------------------------------
# Create Function
library(crayon)
meanVar = function(file, variable ,id = 1:150) {
    # read csv file 
    df = read.csv(file)
    
    #return mena if valid
    if(variable %in% names(df)){
        return(mean(df[[variable]][id]))
    }else{
        message("Invalid variable")
    }
}

# Call Function
meanVar(file = 'C:/Users/Owner/Documents/R/codes/Iris.csv', variable = "SepalLengthCm")
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] 5.843333

meanVar(file = 'Iris.csv', variable = "PetalWidthCm")
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] "Invalid variable"

meanVar(file = 'Iris.csv', variable = "PetalWidthCm")
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] 1.19866

meanVar(file = 'Iris.csv', variable = "PetalWidthCm", id = 100:150)
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] 2.011765

