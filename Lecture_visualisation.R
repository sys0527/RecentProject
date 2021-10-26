#data visualization
install.packages("ggplot2")
library(ggplot2)

#pie
a=c(10,20,30)#parameter
b=c("Apple","Banana","Orange")#label
pie(a,b)

#with radius#change sice of pie
pie(a,b,radius=0.5)

#give title"main="
pie(a,b,radius=1,main="Fruit_List")

#give color
pie(a,b,radius=1,main="Fruit_List",col=c("green","Yellow","red"))

#with direction clock wise
pie(a,b,radius=1,main="Fruit_List",col=c("green","Yellow","red"),clockwise = TRUE)



#pie3D
install.packages("plotrix")
library(plotrix)

pie3D(a)
pie3D(a,labels = b)#for assign label
pie3D(a,labels = b,explode = 0.5)#????????????
pie3D(a,labels = b,explode = 0.5,main="SAMPLE_DATA")
#pie3D(value,label,explode,title)


#line chart
x=c(25,38,20,10)
plot(x)#point form
plot(x,type = "p")#point
plot(x,type="l")#line
plot(x,type="o")#plot&line

#give name x label,y label
plot(x,type="o",xlab ="country",ylab="TEMP")

#title
plot(x,type="o",xlab ="country",ylab="TEMP",main="CLIMATE")

#color
plot(x,type="o",xlab ="country",ylab="TEMP",main="CLIMATE",col="red")

#multi line in a graph
x=c(25,38,20,10)
y=c(22,19,34,12)
z=c(20,30,30,15)
plot(x,type="o",xlab ="country",ylab="TEMP",main="CLIMATE",col="red")
lines(y,type="o",xlab ="country",ylab="TEMP",main="CLIMATE",col="blue")
lines(z,type="o",xlab ="country",ylab="TEMP",main="CLIMATE",col="green")

#plot(value,type,xlabel,ylabel,title,color)


##sample 
Sample_Data = read.csv("C:\\Users\\Owner\\Documents\\R\\codes\\IRIS.csv",header=FALSE)
View(Sample_Data)
names(Sample_Data)=c("sepal_length","sepel_width","petal_length","petal_width","Species")

#create pie chart analysis the iris flower species count
iv=nrow(Sample_Data[Sample_Data$Species=="Iris-versicolor",])
ise=nrow(Sample_Data[Sample_Data$Species=="Iris-setosa",])
ivir=nrow(Sample_Data[Sample_Data$Species=="Iris-virginica",])
a=c(iv,ise,ivir)
l=c("Iris-versicolor","Iris-setosa","Iris-virginica")
pie(a,l,radius=1,main="IRIS_FLOWER",col=c("green","blue","red"),clockwise = TRUE)


#line graph
plot(x=Sample_Data$petal_length,type="o")
plot(x=Sample_Data$petal_length,y=Sample_Data$petal_width,type="p")

#ggplot(data=<data>,mapping = aes(<MAPPING>))+<GEOM_FUNCTION>()

ggplot(Sample_Data,aes(x=petal_length,y=petal_width))#aes=analyse

ggplot(Sample_Data,aes(x=petal_length,y=petal_width)) + geom_line()
ggplot(Sample_Data,aes(x=petal_length,y=petal_width)) + geom_point()

ggplot(Sample_Data,aes(x=petal_length,y=petal_width)) + 
  geom_point(aes(shape = factor(Species),colour=factor(Species)))

ggplot(Sample_Data,aes(x=petal_length,y=petal_width)) + 
  geom_point(aes(shape = factor(Species),colour=factor(Species)))+
  ggtitle("PETAL LENGTH VS PETEL WIDTH base on species")+
  stat_smooth(method=lm)


#bar chart #bar graph use to do comparison of value
#histogram for 1 attribute
library(ggplot2)
data2<- data.frame(name=c("A","B","C","D","E"),value=c(3,12,5,18,45))

#barplot

ggplot(data2,aes(x=name,y=value)) + geom_bar(stat = "identity")#bar high base on value
ggplot(data2,aes(x=name,y=value)) + geom_bar(stat = "identity",width=0.5)
ggplot(data2,aes(x=name,y=value)) + geom_bar(stat = "identity",width=0.5, color="blue")
ggplot(data2,aes(x=name,y=value)) + geom_bar(stat = "identity",width=0.5, color="blue",fill="red")
ggplot(data2,aes(x=name,y=value)) + geom_bar(stat = "identity",width=0.5, color="blue",fill="red")+
  geom_text(aes(label=value))
ggplot(data2,aes(x=name,y=value)) + geom_bar(stat = "identity",width=0.5, color="blue",fill="white")+
  geom_text(aes(label=value))

#histogram   #bin mean count bin width, bin=number of time the valur occured 
View(Sample_Data)
ggplot(Sample_Data,aes(x=petal_width))+ geom_histogram(binwidth = 0.1)
ggplot(Sample_Data,aes(x=petal_width))+ geom_histogram(binwidth = 0.1, colour="orange", fill="red")
ggplot(Sample_Data,aes(x=petal_width))+ 
  geom_histogram(binwidth = 0.1, colour="blue", aes(fill=..count..))+
  scale_fill_gradient("count",low="green",high="red")

#scatterplot(show strength and type of relationship)
ggplot(Sample_Data,aes(x=sepal_length,y=petal_width))+ geom_point()
ggplot(Sample_Data,aes(x=sepal_length,y=petal_width))+ geom_point(aes(color=petal_width))
ggplot(Sample_Data,aes(x=sepal_length,y=petal_width))+ geom_point(aes(color=sepal_length))
ggplot(Sample_Data,aes(x=sepal_length,y=petal_width))+ geom_point(aes(color=petal_width))+
  facet_wrap(~petal_width)


#boxplot(center range and symmetry value)
ggplot(Sample_Data,aes(y=petal_width,x=Species))+geom_boxplot()
ggplot(Sample_Data,aes(y=petal_width,x=Species,color=Species))+
  geom_boxplot()

#line graph/scatter plot -> use to comparison btwn 2 continuous value
#comparison btwn categorical and continuous = bar chart/pie chart/ box plot
#plot and see how value distributed -> histogram