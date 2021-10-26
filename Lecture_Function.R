#function

#call function by pass through argument
display<-function()
{
  print("Welcome")
}
display()

#return value
plus <- function(x,y){
  z=x+y
  return(z)
}
plus(5,6)

#assign directly
plus <- function(){
  x=34
  y<-10
  z=x+y
  return(z)
}
plus()

#get value from user
plus <- function(){
  x = as.integer(readline(prompt="Enter Number:"))
  y = as.integer(readline(prompt="Enter Number:"))
  z=x+y
  return(z)
}
plus()

#problem1
plus<- function(x,y){
  z=x+y
  return(z)
}

subtrcation<- function(x,y){
  z=x-y
  if(z<1){
    z=y-x
  }
  return(z)
}

multiply<- function(x,y){
  z=x*y
  return(z)
}

division<- function(x,y){
  z=x/y
  if(z<1){
    z=y/x
  }
  return(z)
}

main<-function(){
  x = as.integer(readline(prompt="Enter Number:"))
  y = as.integer(readline(prompt="Enter Number:"))
  add=plus(x,y)
  sub=subtrcation(x,y)
  mul=multiply(x,y)
  div=division(x,y)
  return(c(Addition = add,Substraction=sub,Multiply=mul,Division=div))
}
main()

#problem2
getdetail<- function(){
  name=as.character(readline(prompt="Enter name:"))
  id=as.character(readline(prompt="Enter id:"))
  mark1=as.integer(readline(prompt="Enter mark1:"))
  mark2=as.integer(readline(prompt="Enter mark2:"))
  total=mark1+mark2
  average = (mark1 + mark2)/2
  
  return(c(Name=name,
           ID = id,
           Mark1=mark1,
           Mark2=mark2,
           Total_mark=total,
           Average=average))
}
getdetail()

#problem3
diameter<- function(r){
  dia=2*r
  return(dia)
}
circumference<- function(r){
  cir= 2*pi*r
  return(cir)
}
area<- function(r){
  a = pi*r**2
  return(a)
}

main<- function(){
  r=as.integer(readline(prompt="Enter radius(cm):"))
  message("Calculate:
          (A)rea
          (C)ircumference
          (D)iameter")
  choice= as.character(readline(prompt = "Option: "))
  if(choice =="A"){
    area(r)
    paste("The area of the circle is ",area(a))
  }
  else if(choice =="C"){
    circumference(r)
    paste("The diameter of the circumference is ",circumference(cir))
  }
  else if(choice =="D"){
    diameter(r)
    paste("The diameter of the circle is ",diameter(dia))
  }
}
main()
