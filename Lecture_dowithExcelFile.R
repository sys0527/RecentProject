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
