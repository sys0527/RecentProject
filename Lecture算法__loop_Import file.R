#Loop
# equal(==),less than(<),<=,>,>=,!=
x = -1000
if(x>0)
{
  print("x is +ve")
}else if(x<-100)
{
  print("Please enter the value betwen -100 to 100")
}else
{
  print("x is -ve")
}

x=-100
ifelse(x>0,"x is +ve","-ve")#true show 2nd parameter, false show 3rd parameter

x = 50
ifelse(x>0,x,0)

x=as.integer(readline(prompt="Enter the number:"))
 
#switch
x=switch(3,"this","is","R","Tutorial","For","Beginners")#??????????????????parameter??????????????????
print(x)
option = as.integer(readline(prompt = "Enter your color option:"))
x= switch(option,"Red","Black","Pink","Blue")
print(x)

#practice question
#random integer btwn 0-1000
#6765
x=as.integer(readline(prompt="Enter the number between 0 to 1000:"))
x = sample(0:10000,1,T)
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
  print(y)
}
y=switch(y,"One","Two","Three","Four","Five","Six","Seven","Eight","Nine")
print(y)

#Loop(for,while,repeat)
for(i in 1:30)
{
  print(i)
}

i=1
while(i<=30){
  print(i)
  i=i+1
}


i=1 
repeat{
  print(i)
  i=i+1
  if(i>30)
  {
    break
  }
}

#Praxtice
#print suere of number (i x i) or (x^2) from 1 to 20
i=1
while(i<=20){
  result = i*i
  print(result)
  i=i+1
}
i=1 
repeat{
  result = i*i
  print(result)
  i=i+1
  if(i>20)
  {
    break
  }
}



#read input from txt file
score = scan(file="C:\\Users\\Owner\\Downloads\\1.txt")
score
for (i in score)
{
  num=i/2
  print(num)
}


# read input from excel file
install.packages("readxl")
library(readxl)
excel1 <- read_excel('C:\\Users\\Owner\\Downloads\\1.xlsx',sheet=1)
excel1


#read read input from csv file
sample_data = read.csv("C:\\Users\\Owner\\Downloads\\1.csv",header=TRUE)#????????????header?????????,??????header?????????????????????data
sample_data
