tranNo <- 1001:1005
amount <- c(15,27,39,51,63)
data<- data.frame(TransactionNo = tranNo,Amount = amount)
ddata

df<-data.frame(ID=c(100,200,300,400),carrier=c("UA","AA","HA","UA")) 
df
f <- function(a, b) {
  a^2
}
f(2)
grade = "A" 

x=switch(grade, A="Perfect", B="Distinction", C="Credit", "Pass") 

print(x) 
8/2+1*2-2*2-2

function_x <- function(v1){ 
  v<-c() 
  
  for (item in v1){ 
    
    if(!(item %in% v)){ 
      
      v=c(v,item) 
      
    } 
    
  } 
  
  return(v) 
  
} 

x = c(10, 10, 30, 20, 15) 

y =  c(40, 30, 10, 50, 30) 

z = c(x,y) 

xx = function_x(z) 

xx 


res = ifelse(seq(1,100,5)>=50,1,0)
res
a= as.logical(amount)
a
Sample_Data = read.csv("C:\\Users\\Owner\\Documents\\R\\codes\\IRIS.csv",header=FALSE)
View(Sample_Data)
names(Sample_Data)=c("I","II","III","IV","V")
head(Sample_Data)
tail(Sample_Data,7)
length(Sample_Data)
ncol(Sample_Data)
nrow(Sample_Data)
Sample_Data$II
Sample_Data$I

iris_Species = factor(Sample_Data$II)
iris_Species

Sample_Data$I
max(Sample_Data$I)
min(Sample_Data$I)
mean(Sample_Data$I)
summary(Sample_Data)
summary(Sample_Data$II)

Sample_Data[2,3] #2nd row and 3 rd column value
Sample_Data[142,]
Sample_Data[48:64,]
summary(Sample_Data$III)

subset(Sample_Data, V =="Iris-virginica")[1:5,]
Sample_Data[Sample_Data$II>4,]
nrow(Sample_Data[Sample_Data$II>4,])
Sample_Data[(Sample_Data$II>4) & (Sample_Data$IV>0.3),]
