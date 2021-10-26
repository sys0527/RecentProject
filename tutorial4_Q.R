# Programming for Data Analysis
# Tutorial 4: Control Statements and Loops
#
# Topics Covered:
#       1. if and else
#       2. ifelse
#       3. switch
#       4. for
#       5. while
#       6. repeat
#


# - - - - - - - - - -  Quick Review: Data Structures - - - - - - - - - - - -
# Construct the table of data structures
one_dimension = c("vector","List")
two_dimension = c("Matrix","Data Frame")
n_dimension = c("Array",NA)

data_structure = data.frame(
  One_Dimension = one_dimension,
  Two_Dimension = two_dimension,
  N_Dimension = n_dimension
)

row.names(data_structure)=c("single type","Multiple type")
View(data_structure)
# Assign x as a vector with 1 to 20
x=1:20

# Convert x into a 4x5 matrix and save into y
y = matrix(x,4,5)
y
# Convert x into a 2x5x2 array and save into z
z = array(x,c(2,5,2))
z
# Combine data_structure, x, y and z into a list
mylist = list(data_structure,x,y,z)
mylist

# - - - - - - - - - - - - IF-ELSE Statement - - - - - - - - - - - -
# Operators for checking 
# equal to (==)
# less than (<)
# less than or equal to (<=)
# greater than (>)
# greater than or equal to (>=)
# not equal (!=)

# ~~~~~~~~~~~~~~~~~~~~~~ Question 1 ~~~~~~~~~~~~~~~~~~~~~~
# Assign x with numeric 10.
# Write a R program to check if x is bigger than 3, assign y equal to x.
# ====================== Answer ==========================
x = 10 ;x
if(x>3){
  y=x
}
print(y)
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] 10
# [1] 10


# ~~~~~~~~~~~~~~~~~~~~~~ Question 2 ~~~~~~~~~~~~~~~~~~~~~~
# Assign x with numeric 5.
# Write a R program to check if x is bigger than 3, assign y with numeric 10,
# else assign y with numeric 0.
# ====================== Answer ==========================
x = 5
if(x>3){
  y=10
}else{
  y=0
}
y
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] 5
# [1] 10


# ~~~~~~~~~~~~~~~~~~~~~~ Question 3 ~~~~~~~~~~~~~~~~~~~~~~
# Assign x with numeric within range 0 to 10000
# Write a program to check if x greater or equal to 1000, assign y to first digit of x,
# ----else, check if x greater or equal to 100, assign y to first digit of x,
# --------else, check if x greater or equal to 10, assign y to first digit of x,
# ------------else, assign one to x.
# Call paste("The first digit of x is", y)
# ====================== Answer ==========================
x=sample(0:10000,1,T)
print(x)
if(x>=1000){
  y=as.integer(x/1000)
  print(y)
}else if(x>=100){
  y=as.integer(x/100)
  print(y)
}else if(x>=10){
  y=as.integer(x/10)
  print(y)
}else
{
  y=1
  paste("The first digit of ", x," is ",y)
}

# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] 21
# The first digit of x is 2




# - - - - - - - - - - - - SWITCH Statement - - - - - - - - - - - -

# ~~~~~~~~~~~~~~~~~~~~~~ Question 4 ~~~~~~~~~~~~~~~~~~~~~~
# Write a program to select "This", "is", "R", "Tutorial", "for", "Beginners" by using
# numeric in switch function.
# ====================== Answer ==========================
x = switch(3,"This", "is", "R", "Tutorial", "for", "Beginners")
x
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] "R"


# ~~~~~~~~~~~~~~~~~~~~~~ Question 5 ~~~~~~~~~~~~~~~~~~~~~~
# Write a program to pass the result of Question 3 into switch function, then
# display the number in characters. Example: if y = 1, display "one"
# ====================== Answer ==========================
y=switch(y,"One","Two","Three","Four","Five","Six","Seven","Eight","Nine")#normal
y=switch(y,"1"="One","2"="Two","3"="Three","4"="Four","5"="Five","6"="Six","7"="Seven","8"="Eight","Nine")#???????????????default ??????,???????????????????????????assign????????????
print(y)
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] "two"



# - - - - - - - - - - - - FOR, WHILE & REPEAT Statement - - - - - - - - - - - -

# ~~~~~~~~~~~~~~~~~~~~~~ Question 6 ~~~~~~~~~~~~~~~~~~~~~~
# Write a program to find the summation of n numbers stored in a vector using 
# for, while, and repeat statements.
# ====================== Answer ==========================
#assume n = 10
numbers = floor(runif(10,0,100))
total=0
# for loop
for(i in numbers){
  total = total+ i
}
total
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] 433

# while loop
i=1
total=0
while(i<= length(numbers)){
  total = total + numbers[1]
  i=i+1
}
total
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] 866

#repeat loop
i=1
total=0
repeat{
  if(i>length(numbers)){
    break
  }else{
    total=total+numbers[i]
  }
  i=i+1
}
total
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] 1299


# ~~~~~~~~~~~~~~~~~~~~~~ Question 7 ~~~~~~~~~~~~~~~~~~~~~~
# Write a program to find the summation of the numbers stored in the first 
# column in a matrix using for, while, and repeat statements.
# ====================== Answer ==========================
# assume matrix (4X3)
mat = matrix(floor(runif(12,0,100)),4,3)
mat
sum(mat[,1])
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# > sum(mat[,1])
# [1] 205

total = 0
# for loop
for(i in mat[,1]){
  total = total +i
}
total
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# > print(total)
# [1] 205

# while loop
i = 1
total = 0
while(i<=length(mat[,1])){
  total = total+ mat[i,1]
  i = i+1
}
total
  # ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] 205

# repeat loop
i = 1
total = 0
repeat{
  if(i <= length(mat[,1])){
    total = total + mat[i,1]
  }else{
    break
  }
}
total
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] 205



# - - - - - - - - - - - - Exercise - - - - - - - - - - - -

# ~~~~~~~~~~~~~~~~~~~~~~ Exercise 1 ~~~~~~~~~~~~~~~~~~~~~~
# Write a program to prompt 5 integers from the operator. Find the largest of 
# those 5 integers and display it to the screen using if-else
# Use readline and as.integer functions. 
# For example, val= readline(prompt = "Number 1:");
# ====================== Answer ==========================
max=as.integer(readline(prompt="Number 1:"))
for(i in 2:5){
  x = as.integer(readline(prompt = paste("Number",i,":")))
  if(max< x){
    max = x
  }
}

# Display
print(paste("The maximum value is",max))

# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# Number 1 :
#     8
# Number 2 :
#     12
# Number 3 :
#     5
# Number 4 :
#     22
# Number 5 :
#     17
# The maximum value is: 22


# ~~~~~~~~~~~~~~~~~~~~~~ Exercise 2 ~~~~~~~~~~~~~~~~~~~~~~
# Use if and for statements to write a program to store 5 integers received 
# from the operator to form a vector. If a negative value is entered ignore it
# Use readline and as.integer functions.
# For example, val= readline(prompt = paste("Please enter an integer:")
# ====================== Answer ==========================
y=c()#blank vactor
for(i in 1:5){
  x = as.integer(readline(prompt = paste("Please enter an integerr",i,":")))
  if(x > 0){
    y=c(y,x)
  }
}
y
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# Please enter an integer:1
# Please enter an integer:2
# Please enter an integer:3
# Please enter an integer:4
# Please enter an integer:-5
# > values
# [1] 1 2 3 4


# ~~~~~~~~~~~~~~~~~~~~~~ Exercise 3 ~~~~~~~~~~~~~~~~~~~~~~
# Use if and for statements to write a program to calculate the product of 5 
# integers received from the operator. If a negative value is entered ignore it
# Use readline and as.integer functions.
# ====================== Answer ==========================
total=1
for(i in 1:5){
  x = as.integer(readline(prompt = paste("Please enter an integerr",i,":")))
  if(x > 0){
    total = total * x
  }
}
total
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# Please enter an integer:2
# Please enter an integer:5
# Please enter an integer:4
# Please enter an integer:-1
# Please enter an integer:-7
# Total (product): 40

# ~~~~~~~~~~~~~~~~~~~~~~ Exercise 4 ~~~~~~~~~~~~~~~~~~~~~~
# Using a switch statement, write a program to prompt the user to choose their 
# favourite programming language. Choose 1 for R, 2 for Java, and 3 for Python. 
# Display the name of the programming language to the screen when they make the 
# selection.
# Use message(), readline() and switch()
# ====================== Answer ==========================
message("Please choose your favourite programming language :\n1.C\n2.Java\n3.VB.Net")
option = as.integer(readline(prompt = paste("Please enter an integer between 1 and 3: ")))
language = switch(option,"1"="C","2"="Java","3"="VB.Net","Error")
print(paste("Your favourite programming language is",language))
ifelse(language != "Error",
       paste("Your favourite programming language is",language),
       "Invalid Input")
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# Please choose your favourite programming language:
# 1 C
# 2 Java
# 3 VB.Net
# > option = ...
# Please enter an integer between 1 and 3:1
# > language = ...
# > print(paste("Your favourite programming language is",language))
# [1] "Your favourite programming language is R"

# With error tolerance

# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# Please choose your favourite programming language:
# 1 C
# 2 Java
# 3 VB.Net
# > option = ...
# Please enter an integer between 1 and 3:5
# > language = ...
# > ifelse(...)
# [1] "Invalid input"


# ~~~~~~~~~~~~~~~~~~~~~~ Exercise 4 ~~~~~~~~~~~~~~~~~~~~~~
# A scientist analyzed in an experiment the influence of curing temperature 
# (variable temp) on the breaking strength (variable breaking) of three alloys 
# (variable alloy). He had four ovens in which he simultaneously tested three 
# alloys. He repeated his experiment on three different days (variable day). 
# Get the data by using following commands in R: 

url <- "http://stat.ethz.ch/Teaching/Datasets/WBL/legierung.dat"
data <- read.table(url, header = TRUE)
# DO NOT USE table function when answering these questions.

# a)	Which curing temperatures did the scientist use?
# Note: Average of temp which reach maximum breaking
# ====================== Answer ==========================
mean(data[data$breaking == max(data$breaking),"temp"])

# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] 725


# b)	Construct a new variable breaking.class (bind it to the data) which 
# indicates by the levels "low" and "high" if the breaking strength is greater 
# than the mean breaking strength. What is the number of breaks which occur 
# below the mean breaking strength? 
# Use the function ifelse()
# ====================== Answer ==========================
data$break.class = ifelse(data$breaking > mean(data$breaking),"high","low")
paste(data$break.class)
nobreak = sum(data$break.class == "low")
nobreak
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] "low"  "low"  "high" "low"  "low"  "low"  "high" "high" "high" "high" "high" "high"
# [13] "low"  "low"  "low"  "high" "high" "high" "low"  "low"  "high" "high" "high" "high"
# [25] "low"  "high" "high" "high" "high" "high" "low"  "low"  "low"  "low"  "low"  "low"
# [1] 19


# c)	If the cumulative breaking strength exceeds 250, the scientist needs 
# to calibrate the measurement system newly. How many measurements of breaking 
# strength were done before the first calibration? You can assume that the order
# in the data represents the order in which the scientist measured the breaking 
# strength. 
# Hint: Count once by using a while-loop and once using a for-loop.
# ====================== Answer ==========================
# while loop
i = 1
cumulative.breaking = 0
# Write your code here
while(i <= length(data[,1])){
  cumulative.breaking = cumulative.breaking + data$breaking[i]
  if(cumulative.breaking >250){
    break
  }
  i=i+1
}
print(paste(i,"observations done before first calibration"))
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] "7 observations done before first calibration"

# for loop
cumulative.breaking = 0
noOfObservation = 0
# Write your code here
for(i in data[,4]){
  cumulative.breaking = cumulative.breaking +i
  noOfObservation = noOfObservation +1
  if(cumulative.breaking >250){
    break
  }
}
# C-style String Formatting Commands
sprintf("%i observations done before first calibration", noOfObservation)
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] "7 observations done before first calibration"
