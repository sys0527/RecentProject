# Programming for Data Analysis
# Tutorial 3: Data Structures
#
# Topics Covered:
#       1. Data Frame
#       2. List
#       3. Matrix
#       4. Array
#

# - - - - - - - - - -  Quick Review: Data Types - - - - - - - - - - - -
# Numeric: 100 vs 100L


# Character: "John"


# Date: Date vs POSIXct


# Logical: TRUE, T, 1


# Vector: c("Ali", "Abu")


# Factor: level: "Female" "Male"


# - - - - - - - - - - - - Data Frame - - - - - - - - - - - -

# ~~~~~~~~~~~~~~~~~~~~~~ Question 1 ~~~~~~~~~~~~~~~~~~~~~~
# Write an R program to create an empty data frame with data.frame().
# ====================== Answer ==========================

df=data.frame()

m1 = matrix()
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# data frame with 0 columns and 0 rows

m1
# ~~~~~~~~~~~~~~~~~~~~~~ Question 2 ~~~~~~~~~~~~~~~~~~~~~~
# Write an R program to create a data frame from four given vectors.
# 1. Assign no in vector with 1 to 5
# 2. Assign gender in vector with 'M', 'M', 'F', 'M', 'F'
# 3. Assign name in vector with characters 'Ali', 'Bakar', 'Catherine', 'Donald', "Elaine"
# 4. Assign amount with sample() to generate 5 random number within 1000 and 2000
# 5. Assign df in data frame with no, name, gender, amount
# ====================== Answer ==========================
no = 1:5
gender = c('M', 'M', 'F', 'M', 'F')
name = c("Ong","Ng","sim","Brian","Brenda")
amount = sample(1000:2000,5,TRUE)
df = data.frame(no,name,gender,amount)
df
str(df)

# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
#   no      name gender amount
# 1  1       Ali      M   1667
# 2  2     Bakar      M   1500
# 3  3 Catherine      F   1133
# 4  4    Donald      M   1613
# 5  5    Elaine      F   1350


# ~~~~~~~~~~~~~~~~~~~~~~ Question 3 ~~~~~~~~~~~~~~~~~~~~~~
# Write an R program to extract specific column from a data frame using its column name.
# ====================== Answer ==========================
df["name"]   
df$name

#~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
#        name
# 1       Ali
# 2     Bakar
# 3 Catherine
# 4    Donald
# 5    Elaine


# ~~~~~~~~~~~~~~~~~~~~~~ Question 4 ~~~~~~~~~~~~~~~~~~~~~~
# Write an R program to extract the first two rows from a given data frame.
# ====================== Answer ==========================
df[]
amount[c(1,2)]

df[1:2,]

# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
#   no  name gender amount
# 1  1   Ali      M   1948
# 2  2 Bakar      M   1889



# ~~~~~~~~~~~~~~~~~~~~~~ Question 5 ~~~~~~~~~~~~~~~~~~~~~~
# Write an R program to add a new column called age in a given data frame with cbind()
# ====================== Answer ==========================
age = c(34,23,56,32,36)
df = cbind(df , age)
df
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
#   no      name gender amount age
# 1  1       Ali      M   1948  34
# 2  2     Bakar      M   1889  23
# 3  3 Catherine      F   1370  56
# 4  4    Donald      M   1194  32
# 5  5    Elaine      F   1609  36


# ~~~~~~~~~~~~~~~~~~~~~~ Question 6 ~~~~~~~~~~~~~~~~~~~~~~
# Write an R program to add new row(s) to an existing data frame with rbind()
# no = 6,
# name = "Morgan",
# gender = "M",
# amount = 1500,
# age = 29
# ====================== Answer ==========================
v2 = c(6,"Morgan","M",1500,29)
df = rbind(df,v2)
df
# sir's answer
rbind(df,c(
  no = 6,
  name ="Morgan",
  gender = "M",
  amount = 1500,
  age = 26
))
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
#   no      name gender amount age
# 1  1       Ali      M   1948  34
# 2  2     Bakar      M   1889  23
# 3  3 Catherine      F   1370  56
# 4  4    Donald      M   1194  32
# 5  5    Elaine      F   1609  36
# 6  6    Morgan      M   1500  29

# ~~~~~~~~~~~~~~~~~~~~~~ Question 7 ~~~~~~~~~~~~~~~~~~~~~~
# Write an R program to drop column(s) by name from a given data frame.
# Note: Assign NULL to a column(s)
# ====================== Answer ==========================
df["age"] = NULL
df
df[-2]
df[-c(2,4)]
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
#   no      name gender amount
# 1  1       Ali      M   1948
# 2  2     Bakar      M   1889
# 3  3 Catherine      F   1370
# 4  4    Donald      M   1194
# 5  5    Elaine      F   1609
# 6  6    Morgan      M   1500


# ~~~~~~~~~~~~~~~~~~~~~~ Question 8 ~~~~~~~~~~~~~~~~~~~~~~
# Write an R program to create a data frame from two given vectors.
# 1. Assign no in vector with 1 to 5
# 2. Assign sport in vector with "Badminton", "Football", "Basketball", "Tennis", "Baseball"
# ====================== Answer ==========================
no = 1:5
sport = c("Badminton", "Football", "Basketball", "Tennis", "Baseball")
df= data.frame(no,sport)

# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# no      sport
# 1  1  Badminton
# 2  2   Football
# 3  3 Basketball
# 4  4     Tennis
# 5  5   Baseball

df= data.frame(Number = no,Sport =sport)
df
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# Number      Sport
# 1      1  Badminton
# 2      2   Football
# 3      3 Basketball
# 4      4     Tennis
# 5      5   Baseball


# ~~~~~~~~~~~~~~~~~~~~~~ Question 9 ~~~~~~~~~~~~~~~~~~~~~~
# Write an R program to check the number of rows and columns
# Note: nrow(), ncol(), dim()
# ====================== Answer ==========================
nrow(df)

# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] 5

ncol(df)


# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] 2

dim(df)
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] 5 2


# ~~~~~~~~~~~~~~~~~~~~~~ Question 10 ~~~~~~~~~~~~~~~~~~~~~~
# Write an R program to rename the 'Number' into 'No'
# Note: names()
# ====================== Answer ==========================
names(df) = c("No 1","Sport")
df
names(df)[1] ="No"
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# No      Sport
# 1  1  Badminton
# 2  2   Football
# 3  3 Basketball
# 4  4     Tennis
# 5  5   Baseball


# ~~~~~~~~~~~~~~~~~~~~~~ Question 11 ~~~~~~~~~~~~~~~~~~~~~~
# Write an R program to rename the name of the rows into "I", "II", "III", "IV", "V"
# Note: rownames()
# ====================== Answer ==========================
rownames(df)= c("I","II","III","IV","V")
df
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
#     No      Sport
# I    1  Badminton
# II   2   Football
# III  3 Basketball
# IV   4     Tennis
# V    5   Baseball


# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# No      Sport
# 1  1  Badminton
# 2  2   Football
# 3  3 Basketball
# 4  4     Tennis
# 5  5   Baseball


# ~~~~~~~~~~~~~~~~~~~~~~ Question 12 ~~~~~~~~~~~~~~~~~~~~~~
# Write an R program to show the first number of rows or last few number of rows
# Note: head() and tail()
# ====================== Answer ==========================
df = rbind(df,df) # duplicate the number of rows
head(df,20)
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# No      Sport
# 1  1  Badminton
# 2  2   Football
# 3  3 Basketball
# 4  4     Tennis
# 5  5   Baseball
# 6  1  Badminton


# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# No      Sport
# 1  1  Badminton
# 2  2   Football
# 3  3 Basketball
# 4  4     Tennis
# 5  5   Baseball
# 6  1  Badminton
# 7  2   Football

tail(df,10)
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# No      Sport
# 5   5   Baseball
# 6   1  Badminton
# 7   2   Football
# 8   3 Basketball
# 9   4     Tennis
# 10  5   Baseball


# ~~~~~~~~~~~~~~~~~~~~~~ Information ~~~~~~~~~~~~~~~~~~~~~~
# Different way to extract column(s) from data frame
# ====================== Answer ==========================
class(df$Sport)
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] "character"

class(df[c("No","Sport")])
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] "data.frame"

class(df[,"Sport"])
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] "character"

class(df["Sport"])
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] "data.frame"

class(df[["Sport"]])
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] "character"

class(df[,"Sport", drop=FALSE])
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] "data.frame"



# - - - - - - - - - - - - List - - - - - - - - - - - -

# ~~~~~~~~~~~~~~~~~~~~~~ Question 1 ~~~~~~~~~~~~~~~~~~~~~~
# Write an R program to create a list containing 1, 2, 3 with list()
# ====================== Answer ==========================
mylist=list(1,2,3,no,sport,df)
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [[1]]
# [1] 1
# 
# [[2]]
# [1] 2
# 
# [[3]]
# [1] 3


# ~~~~~~~~~~~~~~~~~~~~~~ Question 2 ~~~~~~~~~~~~~~~~~~~~~~
# Write an R program to create a list containing a vector with 1, 2, 3
# ====================== Answer ==========================
a=c(1,2,3)
list(a)
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [[1]]
# [1] 1 2 3


# ~~~~~~~~~~~~~~~~~~~~~~ Question 3 ~~~~~~~~~~~~~~~~~~~~~~
# Write an R program to create a list containing a vector with 1, 2, 3 in first row
# and 3 to 7 in second row.
# ====================== Answer ==========================
mylist[[6]]
mylist[[6]][mylist[[6]][2]=="Football","no"]
df[]
mylist[[2]] >=1
# ~~~~~~~~~~~~~~~~~~1~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [[1]]
# [1] 1 2 3
# 
# [[2]]
# [1] 3 4 5 6 7


# - - - - - - - - - - - - Matrix/Matrices - - - - - - - - - - - -

# ~~~~~~~~~~~~~~~~~~~~~~ Question 1 ~~~~~~~~~~~~~~~~~~~~~~
# Write an R program to create a blank matrix with matrix().
# ====================== Answer ==========================



# ~~~~~~~~~~~~~~~~~~~~~~ Question 2 ~~~~~~~~~~~~~~~~~~~~~~
# Write an R program to create a matrix taking a given vector of numbers as input.
# Then, display the matrix.
# ====================== Answer ==========================

# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [,1]
# [1,]    1
# [2,]    2
# [3,]    3
# [4,]    4
# [5,]    5
# [6,]    6
# [7,]    7
# [8,]    8
# [9,]    9
# [10,]   10


# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
#      [,1] [,2] [,3] [,4]
# [1,]    1    3    5    7
# [2,]    2    4    6    8


# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
#      [,1] [,2] [,3] [,4]
# [1,]    1    2    3    4
# [2,]    5    6    7    8


# ~~~~~~~~~~~~~~~~~~~~~~ Question 3 ~~~~~~~~~~~~~~~~~~~~~~
# Write an R program to create a matrix taking a given vector of numbers as input.
#     v1 = 1:10
# Then, give names for its columns and rows. Finally, display the matrix.
# matrix(data = NA, nrow = 1, ncol = 1, byrow = FALSE, dimnames = NULL)
# ====================== Answer ==========================
v1 = 1:10
m1 = matrix(v1,nrow=2,ncol =5)
colnames(m1)=c("c1","c2","c3","c4","c5")
rownames(m1)=c("r1","r2")
m1
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# c1 c2 c3 c4 c5
# r1  1  3  5  7  9
# r2  2  4  6  8 10


# ~~~~~~~~~~~~~~~~~~~~~~ Question 4 ~~~~~~~~~~~~~~~~~~~~~~
# Write an R program to create two 2x3 matrices then Add, Subtract, Multiply
# and Divide the matrices.
# Note: Matrix Multiplication is A %*% B
# ====================== Answer ==========================
v1 = 1:6
m1 = matrix(v1, 2, 3)
m2 = matrix(10:15, 2, 3)
m1+m2
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [,1] [,2] [,3]
# [1,]   11   15   19
# [2,]   13   17   21

m1-m2
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [,1] [,2] [,3]
# [1,]   -9   -9   -9
# [2,]   -9   -9   -9

m1*m2
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [,1] [,2] [,3]
# [1,]   10   36   70
# [2,]   22   52   90

m1 / m2
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
#           [,1]      [,2]      [,3]
# [1,] 0.1000000 0.2500000 0.3571429
# [2,] 0.1818182 0.3076923 0.4000000



# ~~~~~~~~~~~~~~~~~~~~~~ Question 5 ~~~~~~~~~~~~~~~~~~~~~~
# Write an R program to access the element(s) of a given matrix stored in the following
# indices:
#   a.	2nd row and 3rd column,
#   b.	the 3rd row,
#   c.	the 4th column.
# ====================== Answer ==========================
m2 = matrix(1:20,4,5)
m2

# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
#      [,1] [,2] [,3] [,4] [,5]
# [1,]    1    5    9   13   17
# [2,]    2    6   10   14   18
# [3,]    3    7   11   15   19
# [4,]    4    8   12   16   20

m2[2,3]
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] 10

m2[3,]
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1]  3  7 11 15 19

m2[,4]
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] 13 14 15 16


# ~~~~~~~~~~~~~~~~~~~~~~ Question 6 ~~~~~~~~~~~~~~~~~~~~~~
# Write an R program to multiply the value stored in the 2nd row and 3rd column
# by the value stored in the 1nd row and 2rd column.
# ====================== Answer ==========================

# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] 50


# ~~~~~~~~~~~~~~~~~~~~~~ Question 7 ~~~~~~~~~~~~~~~~~~~~~~
# Write an R program to concatenate two given matrices of same number of columns but
# different number of rows with rbind().
# ====================== Answer ==========================
m1 = matrix(1:6, 2, 3)
m2 = matrix(1:12, 4, 3)
rbind(m1,m2)
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
#      [,1] [,2] [,3]
# [1,]    1    3    5
# [2,]    2    4    6
# [3,]    1    5    9
# [4,]    2    6   10
# [5,]    3    7   11
# [6,]    4    8   12


# ~~~~~~~~~~~~~~~~~~~~~~ Question 8 ~~~~~~~~~~~~~~~~~~~~~~
# Write an R program to concatenate two given matrices of same number of rows but
# different number of columns with cbind().
# ====================== Answer ==========================
m1 = matrix(1:8, 2, 4)
m2 = matrix(1:4, 2, 2)
cbind(m1,m2)
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
#      [,1] [,2] [,3] [,4] [,5] [,6]
# [1,]    1    3    5    7    1    3
# [2,]    2    4    6    8    2    4


# ~~~~~~~~~~~~~~~~~~~~~~ Question 9 ~~~~~~~~~~~~~~~~~~~~~~
# Write an R program to find the maximum and minimum value in a given matrix.
# ====================== Answer ==========================
m1 = matrix(1:8, 2, 4)
max(m1)
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] 8
min(m1)
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] 1


# ~~~~~~~~~~~~~~~~~~~~~~ Question 10 ~~~~~~~~~~~~~~~~~~~~~~
# Write an R program to find the row and column index of the maximum and minimum
# value in a given matrix.
# which(x, arr.ind = FALSE, useNames = TRUE)
# which.min(x)
# which.max(x)
# ====================== Answer ==========================
m1 = matrix(1:8, 2, 4)
m1
which(m1>4)
which(m1 == max(m1),arr.ind = F)#ns = 8
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
#      row col
# [1,]   2   4

which.max(m1)
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] 8

which(m1 == min(m1),arr.ind = T)
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
#      row col
# [1,]   1   1

which.min(m1)
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] 1



# - - - - - - - - - - - - Array - - - - - - - - - - - -

# ~~~~~~~~~~~~~~~~~~~~~~ Question 1 ~~~~~~~~~~~~~~~~~~~~~~
# Write an R program to create an array from two 3x3 matrices with array().
# array(data = NA, dim = length(data), dimnames = NULL)
# ====================== Answer ==========================
myArr = array(1:9,dim=c(3,3,1))
myArr
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# , , 1
# 
# [,1] [,2] [,3]
# [1,]    1    4    7
# [2,]    2    5    8
# [3,]    3    6    9


# ~~~~~~~~~~~~~~~~~~~~~~ Question 2 ~~~~~~~~~~~~~~~~~~~~~~
# From a given array, print the elements stored in the second row of the
# second matrix of the array. Then, print the element in the 3rd row and 3rd
# column of the 1st matrix in the array.
# ====================== Answer ==========================
myArr = array(1:24,dim = c(3,4,2))
myArr

# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# , , 1
# 
# [,1] [,2] [,3] [,4]
# [1,]    1    4    7   10
# [2,]    2    5    8   11
# [3,]    3    6    9   12
# 
# , , 2
# 
# [,1] [,2] [,3] [,4]
# [1,]   13   16   19   22
# [2,]   14   17   20   23
# [3,]   15   18   21   24

myArr[2,,2]
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] 14 17 20 23

myArr[3,3,1]
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [1] 9


# ~~~~~~~~~~~~~~~~~~~~~~ Question 3 ~~~~~~~~~~~~~~~~~~~~~~
# Given a vector of 24 elements, write an R program to create a 3 dimensional array
# with dim().
# ====================== Answer ==========================
value = 1:24
dim(value)= c(3,4,2)
value
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# , , 1
# 
# [,1] [,2] [,3] [,4]
# [1,]    1    4    7   10
# [2,]    2    5    8   11
# [3,]    3    6    9   12
# 
# , , 2
# 
# [,1] [,2] [,3] [,4]
# [1,]   13   16   19   22
# [2,]   14   17   20   23
# [3,]   15   18   21   24


# ~~~~~~~~~~~~~~~~~~~~~~ Question 4 ~~~~~~~~~~~~~~~~~~~~~~
# Rename the rows, columns and matrix
# ====================== Answer ==========================
row=c("r1","r2","r3")
col = c("c1","c2","c3","c4")
mat_name=c("matrix1","matrix2")
myArr= array(1:24, dim=c(3,4,2),dimnames = list(row,col,mat_name))
myArr
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# , , MATRIX1
# 
# COL1 COL2 COL3 COL4
# ROW1    1    4    7   10
# ROW2    2    5    8   11
# ROW3    3    6    9   12
# 
# , , MATIRX2
# 
# COL1 COL2 COL3 COL4
# ROW1   13   16   19   22
# ROW2   14   17   20   23
# ROW3   15   18   21   24


# ~~~~~~~~~~~~~~~~~~~~~~ Exercise 1 ~~~~~~~~~~~~~~~~~~~~~~
# Write an R program to create a list containing a vector, a matrix and a list and
# give names to the elements in the list. Access the first and second element of
# the list.
# 1. Assign v1 using seq() to create a sequence with increment of 2
# 2. Assign m using matrix to create a 2 by 5 matrix with 1 to 10
# 3. Assign sublist using list() to combine 3 vectors (numeric, logical, character)
# 4. Assign mylist by combining v1, m and sublist
# 5. Rename the list with "myVec", "myMat", "myList"
# ====================== Answer ==========================
v1 = seq(from =1, to= 10,by=2)
v1
m = matrix(1:10,nrow = 2,ncol = 5)
m
num=1:10
log = c(T,F,T)
char=c("apple","Orange")

sublist = list(num,log,char)
sublist

mylist=list(v1,m,sublist)
mylist
names(mylist)=c("myVec","myMat","myList")
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# $myVec
# [1] 1 3 5 7 9
# 
# $myMat
# [,1] [,2] [,3] [,4] [,5]
# [1,]    1    3    5    7    9
# [2,]    2    4    6    8   10
# 
# $myList
# $myList[[1]]
# [1]  1  2  3  4  5  6  7  8  9 10
# 
# $myList[[2]]
# [1]  TRUE FALSE  TRUE
# 
# $myList[[3]]
# [1] "Apple"  "Orange"


# ~~~~~~~~~~~~~~~~~~~~~~ Exercise 2 ~~~~~~~~~~~~~~~~~~~~~~
# Write an R program to create a list containing a character, a number, two vectors,
# a data frame, and a list.
# 1. Assign no in vector with 1 to 5
# 2. Assign gender in vector with 'M' and 'F'
# 3. Assign name in vector with characters
# 4. Assign amount with sample() to generate 5 random number within 1000 and 2000
# 5. Assign df in data frame with no, name, gender, amount
# 6. Assign sublist using list() to combine 3 vectors (numeric, logical, character)
# 7. Assign mylist using list() to combine 'a', 1, v1, v2, df, sublist
# ====================== Answer ==========================
no = 1:5
gender = c('M', 'M', 'F', 'M', 'F')
name = c("Ong","Ng","sim","Brian","Brenda")
amount = sample(1000:2000,5,TRUE)
df = data.frame(no,name,gender,amount)
df
mylist = list("a",1,c(T,T,T),v1,df,sublist)
mylist
# ~~~~~~~~~~~~~~~~~~~~~~ Output ~~~~~~~~~~~~~~~~~~~~~~
# [[1]]
# [1] "a"
# 
# [[2]]
# [1] 1
# 
# [[3]]
# [1] TRUE TRUE TRUE
# 
# [[4]]
# [1] 1 3 5 7 9
# 
# [[5]]
# no      name gender amount
# 1  1       Ali      M   1717
# 2  2     Bakar      M   1962
# 3  3 Catherine      F   1580
# 4  4    Donald      M   1568
# 5  5    Elaine      F   1880
# 
# [[6]]
# [[6]][[1]]
# [1]  1  2  3  4  5  6  7  8  9 10
# 
# [[6]][[2]]
# [1]  TRUE FALSE  TRUE
# 
# [[6]][[3]]
# [1] "Apple"  "Orange"

# End of script