#data manipulation and transformation
install.packages("dplyr")
install.packages("ggplot2")
library(dplyr)
library(ggplot2)
A=read.csv("C:\\Users\\Owner\\Downloads\\first.csv")
B=read.csv("C:\\Users\\Owner\\Downloads\\second.csv")
A

subset(A,SCORE>=50)
distrinction=subset(A,SCORE>=15)
distrinction

subset(A,SCORE>50,select = NAME)#select use to select the output column

subset(A,SCORE>50,sselect=c(NAME,SEM))#select the output column

#example: subset(student,G3>=15&G2>=15&G1>=15,SELECT=c(school_name,tp_no,g1,g2,g3))
semA1=subset(A,SEM==1)
semA1
subset(B,SEM==1)
semB1
C=rbind(semA1,semB1)
C
#max.print?

#sample
#randomly pick any 3 row
sample_n(A,3)

#100% sampling
sample_frac(A,1)

#50% sampling
sample_frac(A,.5)#???????????????

#print only name
select(A,"NAME")
select(A,"NAME","SEM")
#print all except name
select(A,-"NAME")


#filter
filter(A,SEM==1)
x=filter(A,SEM==1& SCORE >50)
x=filter(student,unisp=="Yes"& parentsup=="Yes")

#summarise
summarise(A,ToTAL=sum(SCORE))
summarise(A,ToTAL=sum(SCORE),AVG=mean(SCORE))


#mutate (add new column with existing data)
mutate(A,GRACE_MARK=SCORE+5)

#arrange score in order
arrange(A,SCORE)
arrange(A,desc(SCORE))


#PIPING (combine two commands)
sample_frac(A,0.5)%>%select("SCORE")
sample_frac(A,0.5)%>%select("SCORE") %>% summarise(sum(SCORE))#50%
sample_frac(A,1)%>%select("SCORE") %>% 
  summarise(sum(SCORE))

sample_frac(A,1)%>%select(SEM,SCORE) %>%
  group_by(SEM) %>% 
  summarise(sum(SCORE))
