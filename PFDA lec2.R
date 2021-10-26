#Basic rule
8+2*3-4 #10

#variable
x=10
x1 = 20
y<- 30
40->z

assign("a",20)

#data type

x=5
class(x)
 y= 5L
 class(y)
z ="Hello" 
class(z)
 

var = 2<3
var
class(var)

TRUE * 5

FALSE * 3

date<-"21-06-2021"
class(date)
date1<- as.Date("2021-5-27")
date1
class(date1)
date2<-as.POSIXct("2019/11/15 17:42")
date2

j=10
j=20
j = 2:10
j
j[3]
j<- c(9,3)
j
marks<- runif(5,0,25)
marks
test<-sample(0:25,5,TRUE)#random
test
names(test)<-c("a","b","c","d","e") #??????

#factor
g = c("m","y","m","m","y")
class(g)
nlevels(g)
g = factor(c("m","y","m","m","y","d"))
g

sum(j)


y<-22/7
round(y)
round(y,digits = 2)

sqrt(25)
rep(10,5)
rep("you are stupied",50)
x="frefecfifenifniqwsw"
nchar(x)
length(j)
length(x)
length(marks)

message("Welcome to R language") #just an out put
message("the sum is ",a+x1)
print("welcome")#as value
