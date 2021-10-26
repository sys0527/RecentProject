#create matrix
m1 = matrix()
m1=matrix(1:8)
v1=1:8
m1=matrix(v1)
m1=matrix(c(1,2,3,4,5,6,7,8))
m1
m1= matrix(1:8,2,4)


m1 = matrix(v1,2,4)
colnames(m1) = c("c1","c2","c3","c4") 
rownames(m1) = c("r1","r2")
m1=matrix(1:8,2,4,FALSE,list(c("r1","r2"),c("c1","c2","c3","c4")))
m1=matrix(data=v1,nrow=2,ncol=4, byrow=TRUE, dimnames=list(c("r1","r2"),c("c1","c2","c3","c4")))
m1

m1[,2]
m1[2,2]
m1[1,]


#Array
y1=4.6L
myArr = array(1:9,dim = c(3,3,1))
myArr
myArr= array(1:24,dim=c(3,4,2))

myArr[2,4,1] #find a element
myArr[2,,2]

row_name=c("r1","r2","r3")
col_name=c("col1","col2","col3","col4")
v1=c(1,2,3)
v2=c(10,11,12,13,14,15,16,17,18)
data = array(c(v1,v2),dim=c(3,4,2),dimnames = list(row_name,col_name))
data

#Question1
A=matrix(c(2,0,1,3),ncol=2)
B=matrix(c(5,2,4,-1),ncol=2)
A
B
A+B
A-B
#question2
a=3
A
a*A
#question3
b=c(7,4)
A*b
#Question4
v1 = c(1,2,3)
v2= c(4,5,6)
v3=c(7,8,9)
rowName = c("r1","r2","r3")
colName = c("col1","col2","col3")
V= matrix(c(v1,v2,v3),ncol=3,nrow = 3,byrow=FALSE,dimnames = list(rowName,colName))
V
class(V)
#question5
arr = array((0:20)*5,dim=c(5,2,2))
arr
