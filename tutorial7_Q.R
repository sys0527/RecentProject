# Programming for Data Analysis
# Tutorial 7: Revision
#


# ~~~~~~~~~~~~~~~~~~~~~~ Exercise 1 ~~~~~~~~~~~~~~~~~~~~~~
# Write a R program to append values 1 to 5 into an empty vector, values using
# a)	Combine values function from base package, c()
# b)	For Loop
# ====================== Answer ==========================
x = c(1:5)
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] 1 2 3 4 5

# ~~~~~~~~~~~~~~~~~~~~~~ Exercise 2 ~~~~~~~~~~~~~~~~~~~~~~
# Identify and write the R script for the built-in function
# i.	to find the minimum of a vector x
# ii.	to find the maximum of a vector x
# iii.	to find the average of a vector x
# iv.	to calculate the sum of all elements in a vector x
# v.	to find the number of elements in the vector x
# ====================== Answer ==========================
min(x)
max(x)
median(x)
sum(x)
xData<-factor(x)
str(xData)
# ~~~~~~~~~~~~~~~~~~~~~~ Exercise 3 ~~~~~~~~~~~~~~~~~~~~~~
# Write a R program to create the following matrix, mat.
# ====================== Answer ==========================

# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# |    [,1] [,2] [,3] [,4]
# [1,]    1    4    7   10
# [2,]    2    5    8   11
# [3,]    3    6    9   12


# ~~~~~~~~~~~~~~~~~~~~~~ Exercise 4 ~~~~~~~~~~~~~~~~~~~~~~
# Write a R script to find the following information from matrix, mat in Q3.
# i.	Total number of rows in the matrix
# ii.	Sum of all the elements in column 2
# iii.	Replaced the value in the third row and second column with 100
# iv.	Random generate 4 integer values between 50 to 100. Expand the matrix by adding these values (as new row) into the matrix.
# v.	Calculate the sum of all elements across columns for each row
# vi. Check where 10 located in the matrix
# ====================== Answer ==========================

# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] 3


# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] 15


# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# |    [,1] [,2] [,3] [,4]
# [1,]    1    4    7   10
# [2,]    2    5    8   11
# [3,]    3  100    9   12


# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# |    [,1] [,2] [,3] [,4]
# [1,]    1    4    7   10
# [2,]    2    5    8   11
# [3,]    3  100    9   12
# [4,]   78   88   86   58


# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1]  22  26 124 310


# ~~~~~~~~~~~~~~~~~~~~~~ Exercise 5 ~~~~~~~~~~~~~~~~~~~~~~
# Create a list called mylist using the matrix, mat and vector, t from the
# previous question.
# ====================== Answer ==========================

# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [[1]]
# -----[,1] [,2] [,3] [,4]
# [1,]    1    4    7   10
# [2,]    2    5    8   11
# [3,]    3  100    9   12
# [4,]   78   88   86   58
#
# [[2]]
# [1] 1 2 3 4 5


# ~~~~~~~~~~~~~~~~~~~~~~ Exercise 6 ~~~~~~~~~~~~~~~~~~~~~~
# Write a R program to create an array called myarray of with 3 rows and 5
# columns from any two given vectors (you can decide on the values of the vector).
# Print the 2nd row and 3rd column value of the array.
# ====================== Answer ==========================

# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~



# ~~~~~~~~~~~~~~~~~~~~~~ Exercise 7 ~~~~~~~~~~~~~~~~~~~~~~
# Write a R program to perform the following tasks
# i.	Generate 10 random values for weight, age and gender.
# ii.	Combine these data into a data frame, dat1
# iii.	Categorise the gender using factor function
# iv.	Find the average weight for female and male.
# v.	Use while loop to count the total number of females that weight is below the average female weight
# ====================== Answer ==========================
weight = round(runif(10,45,110),1)
age = as.integer(runif(10,18,40))
gender = sample(c("male","female"),10,TRUE)

data1 = data.frame(
    Age = age,
    Gender = gender,
    Weight =weight
)
data1



# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~

catGender = factor(gender)
data1$Gender = factor(data1$Gender)

# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
avgMale = mean(data1$Weight[data1$Gender =="male"])
avgFemale = mean(data1$Weight[data1$Gender =="female"])
avgWeight = tapply(data1$Weight,data1$Gender,mean)

# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
dataFemale = data1[data1$Gender == "female",]
avgFemale
count=0
i =1
while(i<= nrow(dataFemale)){
    if(dataFemale$Weight[i]<avgFemale){
        count = count+1
    }
    i =i+1
}
print(count)
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~


# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~



# ~~~~~~~~~~~~~~~~~~~~~~ Exercise 8 ~~~~~~~~~~~~~~~~~~~~~~
# Write a R program to create a function that determine the profit or loss of a
# product.  The function will accept 2 arguments; cost price and selling price.
# The function will calculate the product's profit margin by deducting the cost
# price from selling price.  The function will return the result based on the
# following profit margin.
#|----------------------------------
#|         Result |   Profit Margin|
#|----------------------------------
#|           Loss | Negative values|
#|         Profit | Positive values|
#| No profit/loss |     Zero values|
#|----------------------------------
# ====================== Answer ==========================
PnL = function(cost, selling) {
    if((selling - cost)>0){
        return("Profit")
    }else if((selling - cost) <0){
        return("loss")
        
    }else{
        return("No profit/Loss")
    }
}

PnL(cost = 100, selling = 200)
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] "Profit"

PnL(cost = 300, selling = 200)
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] "Loss"

PnL(cost = 250, selling = 250)
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] "No Profit / Loss"


# ~~~~~~~~~~~~~~~~~~~~~~ Exercise 9 ~~~~~~~~~~~~~~~~~~~~~~
# Write a program to access iris data set then perform following tasks.
# i.	Display first and last 10 rows in data.
# ii.	Categorize the Species using factor function and use levels() to show
#     the levels of factor
# iii.	Calculate average of Sepal.Length, Sepal.Width, Petal.Length, Petal.Width
#       in different Species using nested for-loop. Save the result in a matrix.
# ====================== Answer ==========================
data("iris")
View(iris)
head(iris)
tail(iris)
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~

iris$Species
spec  = levels(iris$Species)
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] "setosa"     "versicolor" "virginica"

# Extract names of columns in vector form
subject = names(iris)
subject = subject

# Extract the factor levels in vector form


# Create empty matrix
average = rep(0, 12)
dim(average) = c(3, 4)
rownames(average) = spec
colnames(average) = subject
average

# for-loop
for(row in 1: length(spec)){
    for(col in 1:length(subject)){
        average[row,col] = mean(iris[iris$Species == spec[row],col])
    }
}
average

average
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# Sepal.Length Sepal.Width Petal.Length Petal.Width
# setosa            5.006       3.428        1.462       0.246
# versicolor        5.936       2.770        4.260       1.326
# virginica         6.588       2.974        5.552       2.026


# ~~~~~~~~~~~~~~~~~~~~~~ Exercise 10 ~~~~~~~~~~~~~~~~~~~~~~
# Write a function to prompt the user to type number of hours spent on
# R programming. Then, base on the formula, calculate the possible score in PFDA
# and display the grade achieved.
# score = hourInCoding + round(runif(1, 30, 60),2)
# score = replace(score, score > 100, 100)
# |------------------
# |   Score   Grade |
# |------------------
# |  76-100      A  |
# |   51-75      B  |
# |   26-50      C  |
# |    0-25      D  |
# |------------------
# ====================== Answer ==========================
cal_grade = function() {
    # User Input
    hourInCoding = as.numeric(readline("Please enter number of hour:"))
    
    
    # Formula
    score = hourInCoding + round(runif(1,30,60),2)
    score = replace(score,score>100,100)
    # Declare Grade
    if (score>75){
        grade = "A"
    }else if (score >50){
        grade="B"
    }else if (score >25){
        grade="C"
    }else{
        grade ="D"
    }
    # Display
    print(paste("Your final score is",score,"so your grade is",grade))
}

cal_grade()
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# Please enter number of hours spent on R programming:50
# [1] "Your final score is 90.31 , so your grade is A"
