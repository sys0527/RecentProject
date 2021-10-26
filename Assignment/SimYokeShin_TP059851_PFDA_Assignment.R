#Sim Yoke Shin
#TP059851
#Data Import stage
#get current location
getwd()
#set the working directory
setwd("C:\\Users\\Owner\\Documents\\R\\codes\\Assignment")

#import data from file
file = "C:\\Users\\Owner\\Documents\\R\\codes\\Assignment\\student.csv"
data = read.csv(file, header= TRUE, sep = ";",quote = "")

#import packages
install.packages("ggplot2")
install.packages("dplyr")
install.packages("tidyr")#use gather
install.packages("ggpubr")#combine graph
install.packages("viridis")# color 
install.packages("RColorBrewer")# color 
install.packages("wesanderson")# color 
install.packages("ggbeeswarm")#graph
library(ggplot2)
library(tidyr)
library(dplyr)
library(ggpubr)
library(viridis)
library(RColorBrewer)
library(wesanderson)
library(ggbeeswarm)

#data cleaning

#cleaning data -remove "" from the table
data$school=gsub('"', '', data$school)
data$sex=gsub('"', '', data$sex)
data$address=gsub('"', '', data$address)
data$famsize=gsub('"', '', data$famsize)
data$Pstatus=gsub('"', '', data$Pstatus)
data$Mjob=gsub('"', '', data$Mjob)
data$Fjob=gsub('"','',data$Fjob)
data$reason=gsub('"', '', data$reason)
data$guardian=gsub('"', '', data$guardian)
data$schoolsup=gsub('"', '', data$schoolsup)
data$famsup=gsub('"', '', data$famsup)
data$paid=gsub('"', '', data$paid)
data$activities=gsub('"', '', data$activities)
data$nursery=gsub('"', '', data$nursery)
data$higher=gsub('"', '', data$higher)
data$internet=gsub('"', '', data$internet)
data$romantic=gsub('"','',data$romantic)
data$G1=gsub('"', '', data$G1)
data$G2=gsub('"', '', data$G2)
data$G3=gsub('"', '', data$G3)

#data pre-processing
#rename the attribute of data
names(data)=c("stu_school","stu_sex","stu_age","stu_address","fam_size","parent_living_status",
              "Mo_edu","Fa_edu","Mo_job","Fa_job","reason_chose","guardian","time_HometoSch",
              "study_time","num_failure","ext_edu_sup","fam_edu_sup","ext_paid","ext_cur_activity",
              "attend_nursery_sch","higher_edu","home_internet","romantic","fam_rel_quality","free_time",
              "out_wth_friend","workday_alc","weekend_alc","stu_health","num_absences","Grade_1st","Grade_2nd","Final_Grade")


#Data transformation -change type
data$stu_age= as.numeric(data$stu_age)
data$Mo_edu = as.numeric(data$Mo_edu)
data$Fa_edu = as.numeric(data$Fa_edu)
data$fam_rel_quality = as.numeric(data$fam_rel_quality)
data$free_time = as.numeric(data$free_time)
data$out_wth_friend = as.numeric(data$out_wth_friend)
data$workday_alc = as.numeric(data$workday_alc)
data$weekend_alc = as.numeric(data$weekend_alc)
data$stu_health  = as.numeric(data$stu_health)
data$num_absences= as.numeric(data$num_absences)
data$Grade_1st = as.numeric(data$Grade_1st)
data$Grade_2nd = as.numeric(data$Grade_2nd)
data$Final_Grade = as.numeric(data$Final_Grade)
data$stu_school = as.factor(data$stu_school)
data$stu_sex = as.factor(data$stu_sex)
data$stu_address = as.factor(data$stu_address)
data$fam_size = as.factor(data$fam_size)
data$parent_living_status = as.factor(data$parent_living_status)
data$ext_edu_sup = as.factor(data$ext_edu_sup)
data$fam_edu_sup = as.factor(data$fam_edu_sup)
data$ext_paid = as.factor(data$ext_paid)
data$ext_cur_activity = as.factor(data$ext_cur_activity)
data$attend_nursery_sch = as.factor(data$attend_nursery_sch)
data$higher_edu = as.factor(data$higher_edu)
data$home_internet = as.factor(data$home_internet)
data$romantic = as.factor(data$romantic)



#data exploration
View(data)
summary(data)
dim(data)
names(data)
str(data)



#analysis

# Question 1 Does drinking habit will have bad affect to student? 
data_2=mutate(data,Total_alc=workday_alc+weekend_alc)
data_2=mutate(data_2,AVG_Score=(Grade_1st+Grade_2nd+Final_Grade)/3)


# Analysis 1.1: Comparison of workday_alc and weekend_alc
selection=select(data_2,"workday_alc","weekend_alc","Total_alc")
summary(selection)

#use  gather function  to combine alc
combine_alc=gather(data,alc_day,alc_freq,workday_alc:weekend_alc,factor_key=TRUE)
#draw graph to show difference between workday_alc &weekend_alc
ggplot(combine_alc,aes(x=alc_freq))+geom_bar(aes(fill=alc_day))+facet_wrap(~alc_day)+
  labs(title="Graph of comparison on drink's day",
       x="Drink Alcohol Frequency",
       y="Frequency",
       fill="Drink's day")+
  theme(text=element_text(size=18))

# sub conclusion
# The student who drinks at weekend has scored a higher frequency of drink than student who drink at workday
# most student like to drink lesser in workday and drink frequency in weekend.

# Analysis1.2 find the relationship between drink frequently and health
g1=ggplot(data_2,aes(x=stu_health,y=workday_alc))+geom_jitter(aes(color=stu_health))+
  labs(title="Graph of drink in workday and health",
       x="Student's Health",
       y="Total frequency of drink")+
  theme(text=element_text(size=18))+
  scale_color_gradient2( mid = "yellow", high = "Red")

g2=ggplot(data_2,aes(x=stu_health,y=weekend_alc))+geom_jitter(aes(color=stu_health))+
  labs(title = "Graph of drink in weekend and health",
       x="Student's Health",
       y="Total frequency of drink")+
  theme(text=element_text(size=18))+
  scale_color_gradient2( mid = "yellow", high = "purple")
#draw graph
ggpubr::ggarrange(g1,g2,nrow = 1,ncol = 2)

#sub conclusion
# student who drink alcohol in weekend frequently and healthy student are more than those student who drink frequently in workday
# student drink in workday is having a bad health than the student who drink in weekend. 

#in column view
g3=ggplot(data_2,aes(x=stu_health,y=workday_alc))+geom_col(aes(fill=stu_health))+
  labs(title="graph of drink in workday and health",
       x="Student's Health",
       y="Total frequency of drink")+
  theme(text=element_text(size=18))

g4=ggplot(data_2,aes(x=stu_health,y=weekend_alc))+geom_col(aes(fill=stu_health))+
  labs(title="graph of drink in weekend and health",
       x="Student's Health",
       y="Total frequency of drink")+
  theme(text=element_text(size=18))
#draw graph
ggpubr::ggarrange(g3,g4,nrow = 1,ncol = 2)

# sub conclusion
# more student which like to drink in weekend
# that the majority of students who drink on weekends and weekdays achieve the highest health ratings
# So, drinking on weekends does not worsen our health status


# Analysis1.3 find the relationship between drink Frequency and grades


stu_drink_more=data[(data_2$Total_alc)>=5,]
stu_drink_less=data[(data_2$Total_alc)<5,]

stu_drink_more_num=nrow(stu_drink_more)
stu_drink_less_num=nrow(stu_drink_less)
drink=c(stu_drink_more_num,stu_drink_less_num)
drink_name=c('student drink more than 5', 'student drink less than 5')

#draw pie
pie(drink,drink_name,radius = 1, main = "Student Drink's Frequences ",col=c("blue","red"),clockwise = TRUE)

# sub-conclusion for pie
# 1/3 of student among the whole 922 student which is drink frequently

ggplot(data_2,aes(x=Total_alc,y=AVG_Score))+geom_count(aes(color=Total_alc))+
  labs(title="Compare grade with Drink Frequency",
       x="Student's Drink Frequenly",y="Grade")+
  theme(text=element_text(size=18))

# sub-conclusion 
# it has a pattern that student grades is decreasing with increasing frequency ofdrinking
# so, student who drink more will cause them score lower grades.


# Analysis1.4 Find the relationship between drink more with absence 
summary(data$num_absences)

data_2_filter1=filter(data_2,num_absences>0&num_absences<30)
g5=ggplot(data_2_filter1,aes(x=num_absences,y=workday_alc))+geom_col(aes(fill=num_absences))+
  labs(title="Graph of drink's frequence in workday and Absence's frequence",
       x="Number of Absences",
       y="Total Frequency of drink")+
  theme(text=element_text(size=18))+
  scale_fill_viridis(option = "viridis",discrete =FALSE)+theme_bw()


g6=ggplot(data_2_filter1,aes(x=num_absences,y=weekend_alc))+geom_col(aes(fill=num_absences))+
  labs(title="Graph of drink's frequence in weekend and Absence's frequence",
       x="Number of Absences",
       y="Total Frequency of drink")+
  theme(text=element_text(size=18))+
  scale_fill_viridis(option = "viridis",discrete =FALSE)+theme_bw()

#combine graph
ggpubr::ggarrange(g5,g6,nrow = 1,ncol = 2)

# sub-conclusion
# most student who drink in weekend absence more than student who drink in workday
# the higher amount of them is gather in 2 and 4 days
# so, most student will not absence more than 5 days


# Analysis1.5 Is student which go out frequently will drink more?
# isn't the student who go out frequently will drink more or not
ggplot(data_2,aes(y=out_wth_friend,x=Total_alc))+geom_col(aes(fill=out_wth_friend))+
  facet_wrap(~out_wth_friend)+
  labs(title="Relationship of frequency of go out with frequency of drink",
       x="Frequency of drink",
       y="Frequency of go out in each drink frequency",
       fill="Go out frequence")+
  theme(text=element_text(size=18)) 

# sub-conclusion 
# that those students whose out_wth_friend frequency value is 1 are the least often drinkers
# The drink frequency of those students whose out_wth_friend frequency value is 2-4 increases according to the frequency of out_wth_friend
# students who go out with a frequency of 5 had the highest number of students who drank with a frequency of 10

# Conclusion of question 1
# they prefer drink alcohol lesser in workday and drink alcohol more in weekend
# Although most of them who drink frequency in weekend will healthy then those students who drink in workday,
#but those drinkers might absence the next day of classes and make it hard for them to follow up their studies
# students who no drink frequency will go out with friend lesser than those students who drink more
# So, drink alcohol brings a bad affect to students that it will cause them to have week self-control, 
#and cause them to often absent, go out with friend, and lowering their grade


# Question 2 How the study environment affects student marks?
#   Analysis 2.1 Compare with 2 student address, which place's student smarter?
summary(data_2$stu_address)

R=filter(data_2,stu_address=="R")
U=filter(data_2,stu_address=="U")
R_row=nrow(R)
U_row=nrow(U)
combine_R_U=c(R_row,U_row)
pie(combine_R_U,labels = c("Rural","Urban"),radius = 1,clockwise = T,col=c("#ade8f4","#0096c7"),main="Student Address")

data_3=head(U,110)
data_3=rbind(data_3,tail(U,107))
data_3=rbind(data_3,R)
ggplot(data_3,aes(x=stu_address,y=AVG_Score,color=stu_address))+geom_violin(scale = "area")+
  geom_boxplot(width=0.5)+
  labs(title="Average grade depend on Student Address",
       x="Address",
       y="Average of grades",
       color="Address")+
  theme(text=element_text(size=18))+
  scale_x_discrete(labels=c("Rural","Urban"))+
  scale_color_discrete(labels=c("Rural","Urban"))

# sub conclusion
# the student who live in Urban has the higher value of mean and range
# Urban's student is smartter.


#   Analysis 2.2 Compare the two schools, which school teaches students better?
summary(data_2$stu_school)

GP=filter(data_2,stu_school=="GP")
MS=filter(data_2,stu_school=="MS")
data_4=head(GP,80)
data_4=rbind(data_4,tail(GP,93))
data_4=rbind(data_4,MS)

ggplot(data_4,aes(x=stu_school,y=AVG_Score,color=stu_school))+
  geom_dotplot(binaxis = "y",stackdir = "center",dotsize = 0.5,binwidth = 1)+
  geom_boxplot(width=0.3)+
  labs(title="Average grade depend on schools",
       x="School",
       y="Average of grades",
       color="School")+
  theme(text=element_text(size=18))+
  scale_x_discrete(labels=c("Gabriel Pereira","Mousinho da Silveira"))+
  scale_color_discrete(labels=c("Gabriel Pereira","Mousinho da Silveira"))

# sub-conclusion
# Gabriel Pereira has slightly higher than Mousinho da Silveira
# Fabriel Pereira has lesser amount of student who got below 8 marks
# Gabriel Pereira is the better choice of school

# Analysis2.3 Find the relationship between having home internet with study time
# Is doesn't have home internet will make student study more?
summary(data_2$home_internet)
Yes_Internet=filter(data_2,home_internet=="yes")
No_Internet=filter(data_2,home_internet=="no")
data_5=head(Yes_Internet,76)
data_5=rbind(data_5, tail(Yes_Internet,80))
data_5=rbind(data_5,No_Internet)

Change_internet_name=c("no"="No home internet","yes"="Have home internet")
ggplot(data_5,aes(x=study_time))+geom_histogram(aes(fill=..count..),binwidth = 0.5)+
  facet_wrap(~home_internet,labeller =as_labeller(Change_internet_name))+
  scale_fill_gradient("count",low="green",high="red")+
  labs(title="Relationship between study time and home internet",
       x="study time")+
  theme(text=element_text(size=18))

# sub-conclusion
# most of student study 2 hour per week
# Compare with the student who don't have home internet, 
# the frequency of students who have home internet is more than them in study 3-4 hour per week
# researcher can say that the highest time for student maintain their focus in a no internet environment is 2 hour per week

#Analysis 2.4 Find the relationship between family size with study time
summary(data_2$fam_size)
GT3=data_2 %>% filter(fam_size=="GT3")
LE3=filter(data_2,fam_size=="LE3")
GT3=GT3 %>% head(134) %>% rbind(tail(GT3,134))
data_11=rbind(GT3,LE3)
ggplot(data_11,aes(x=fam_size,y=AVG_Score))+
  geom_dotplot(aes(fill=fam_size,color=fam_size),binaxis = "y", stackdir = "center",dotsize =0.4,binwidth = 0.7)+
  geom_boxplot(width=0.1)+
  theme_light()+
  labs(title="Relationship of family size and grades",
       x="Family size",y="Grade",
       col="family size")+
  theme(text=element_text(size=14))+
  scale_x_discrete(labels=c("greater than 3","less or equal to 3"))+
  scale_fill_discrete(labels=c("greater than 3","less or equal to 3"))+
  scale_color_discrete(guide="none")

# sub-conclusion
# that the mean and range of students with a family size of less than or equal to 3 is greater than those students with a family size of more than three
# family size of greater than 3 have a low range of scores, and the highest and lowest score in the graph

# Analysis 2.5 Find the relationship of extra school education support with student grade 

summary(data_2$ext_edu_sup)
yes_ext_edu=data_2 %>% filter(ext_edu_sup=="yes")
no_ext_edu=filter(data_2,ext_edu_sup=="no")
no_ext_edu=no_ext_edu %>% head(60) %>% rbind(tail(no_ext_edu,54))
data_8=rbind(yes_ext_edu,no_ext_edu)

ggplot(data_8,aes(ext_edu_sup,AVG_Score,group=ext_edu_sup))+
  geom_violin(aes(fill=ext_edu_sup),trim=F)+
  geom_boxplot(width=0.1)+
  labs(title="Relationship of extra educational support and Grades",
       x="extra educational support",
       y="Grade")+
  theme(text=element_text(size=14))

# sub-conclusion
# students who haven't extra educational support has scored a higher range, mean, and the highest and lowest mark
# marks of student who having the extra educational support is concentrate on grades below 15.
# the eligibility for attend the extra education's class is grade scored below 10.
# the lowest grade of student who have extra educational support is higher than student who haven't

# conclusion of question2
# students living in Urban areas generally achieve higher grades than those living in Rural areas
# home internet enables students to study for longer periods of time 
# a smaller family size is a good learning environment 
# extra educational classes offered by the school are a good environment for teachers to help those low learning ability's students. 

# Question 3 How to score higher mark?
#   Analysis 3.1 Find the relationship between want to go for higher education and marks.
summary(data_2$higher_edu)

go_higher=data_2 %>% filter(higher_edu=="yes")
go_higher=go_higher %>%  head(22) %>% 
  rbind(tail(go_higher,22))
no_higher_edu=data_2 %>% filter(higher_edu=="no")
data_6=rbind(go_higher,no_higher_edu)

g17=ggplot(data_6,aes(x=higher_edu,y=AVG_Score,color=higher_edu))+
  geom_beeswarm(priority = "density",cex=4,size=3)+
  labs(title="Graph of grades with wants to take higher edu",
       x="higher education",
       y="Grade")+
  theme(text=element_text(size=16))+theme_light()

g18=ggplot(data_6,aes(x=higher_edu,y=AVG_Score))+
  geom_violin(aes(fill=higher_edu),trim=F)+
  geom_boxplot(width=0.3)+
  scale_fill_manual(values =c(brewer.pal(7,"Set2")[c(1,2,4,5)]))+
  theme_light()+
  labs(title="Graph of grades with wants to take higher edu",
       x="higher education",
       y="Grade")+
  theme(text=element_text(size=14))

#combine graph
ggpubr::ggarrange(g17,g18,nrow = 1,ncol = 2)

# sub conclusion
# the students who do not want to go for higher education usually score lower than those student who do
# The grade that most student score is 7-8 marks.
# student who want to have the higher education will become hardworking and imporve them selves to score the higher marks.


# Analysis 3.2 Find the relationship between romantic and student marks.
summary(data_2$romantic)

yes_romantic=data_2 %>% filter(romantic=="yes")
no_romantic=data_2 %>% filter(romantic=="no")
no_romantic=no_romantic %>% head(155) %>% 
  rbind(tail(no_romantic,150))
data_7=rbind(yes_romantic,no_romantic)

ggplot(data_7,aes(x=romantic,y=AVG_Score))+geom_violin(aes(fill=romantic),trim=F)+
  geom_boxplot(width=0.3)+
  scale_fill_manual(values =c(brewer.pal(7,"Set3")[c(1,2,4,5)]))+
  theme_light()+
  labs(title="Relationship of Romantic and Grades",
       x="Romantic",
       y="Grade")+
  theme(text=element_text(size=18))

# sub-conclusion
# students with romantic= "yes" had higher scores for mean, while students with romantic= "no" had higher score for range
# the student with romantic= "no" had the highest grade among this graph, while students with romantic= "yes" had the lowest grade among this graph.
# students with romantic= "no" basically achieve higher grades than those with romantic= "yes"


# Analysis 3.3 Find the relationship between frequent social activities and marks.
# 	Does frequent social activities for example go out with friend and having extra curriculum activity make students ignore learning?
data_2_1=data_2
data_2_1$out_wth_friend = as.factor(data_2_1$out_wth_friend)
g9=ggplot(data_2_1,aes(x=out_wth_friend,y=AVG_Score))+
  geom_boxplot(aes(group=out_wth_friend,fill=out_wth_friend))+
  theme_light()+
  labs(title="Relationship of Go out frequency and Grades",
       x="Out with friend frequency",
       y="Grade")+
  theme(text=element_text(size=18))+
  scale_fill_manual(values=c(brewer.pal(7,"Set3")[c(1,2,3,4,5)]))

g10=ggplot(data_2_1,aes(x=ext_cur_activity,y=AVG_Score))+
  geom_boxplot(aes(group=ext_cur_activity,fill=ext_cur_activity))+
  theme_light()+
  labs(title="Relationship of Curricular Activities and Grades",
       x="Having Extra-Curricular Activities",
       y="Grade")+
  theme(text=element_text(size=18))+
  scale_fill_manual(values=c(brewer.pal(7,"Set3")[c(1,2)]))

#combine graph
ggpubr::ggarrange(g9,g10,nrow = 1,ncol = 2)

# sub-conclusion
# go out with their friends as often as 1 and those who go out with their friends as often as 5. 
# The students who go out with friends as often as 5 has got the lowest range and grade among all of them
# students who go out with friends as often as 2 has got the highest mark and range.
# if go out frequency more than 2, the grade of student is in a decreasing order
# students with extra-curricular activities score the highest grade and have higher grades in the first and third quarters
# So, the best frequency of go out with friend is 2, the grade of student become decreasing after frequency of 2 and having extra-curricular can score a better grade.


# Analysis 3.4 Find the relationship between absences and grades
data_2 %>% 
  filter(num_absences<=30) %>% 
  ggplot(aes(x=num_absences,y=AVG_Score))+
  geom_jitter(size=1)+
  geom_density_2d_filled(alpha=0.5)+
  labs(title="Relationship of Absences and Grades",
       x="Frequency of absences",
       y="Grade")+
  theme(text=element_text(size=18))+scale_fill_viridis(option = "plasma",discrete =TRUE)  

# sub-conclusion
# most of the student had absence between 0-5 times and scored between 8-15 grades
# excluding students with an absence frequency of 0, almost all students who were absent scored higher than 5
# the higher score of grades are stated among 0-10 frequency of absence


# Analysis 3.5 Find the relationship between attended nursery school and student marks
ggplot(data_2,aes(x=attend_nursery_sch,y=AVG_Score))+
  geom_boxplot(aes(group=attend_nursery_sch,fill=attend_nursery_sch))+
  theme_light()+
  labs(title="Relationship of attended nursery school and Grades",
       x="Attended nursery school",
       y="Grade")+
  theme(text=element_text(size=16))+
  scale_fill_manual(values=c(wes_palette("Moonrise3")[c(1,2)]))
# sub-conclusion
# both of the mean is at the same grade and those student with attended nursery school has scored a higher range and highest grade in this graph
# Those students who had not attended nursery school had a lower range of grades and this range showed a higher number of students scoring below average

# conclusion of question 3
# those who had a goal to go to university score better grades, the romantic= "no" students generally did well, but those romantic= "yes" students could have scored higher if they had not been decadent
# The more often students go out the worse their exam results are, the better it is to go out as often as 2
# Students who attend extra-curricular score better grades, after the number of absences is greater than 10, students' grades will decrease, the best scores are for students who miss between 0 and 10. 
# Attending a nursery school is good for developing the brain from an early age to make students smarter
# So, the characteristics for score higher grades are attended nursery school, active with extra-curricular activities, want to go for higher education, and keep focus on education means no romantic, don't absence frequently, and don't out with friend frequently. 

# Question 4 How does parent become a factor of affect student mark?
#   Analysis 4.1 Is a student who born in a high edu family will make he/she become smarter?

g11=ggplot(data_2,aes(x=Mo_edu,y=AVG_Score))+geom_violin(aes(group=Mo_edu,fill=Mo_edu))+
  theme_light()+
  geom_boxplot(width=0.2,aes(group=Mo_edu))+
  labs(title="Relationship of mother's education and Grades",
       x="mother's education",
       y="Grade")+
  theme(text=element_text(size=16))+
  scale_fill_viridis(option = "inferno",discrete =FALSE)

g12=ggplot(data_2,aes(x=Fa_edu,y=AVG_Score))+geom_violin(aes(group=Fa_edu,fill=Fa_edu))+
  theme_light()+
  geom_boxplot(width=0.2,aes(group=Fa_edu))+
  labs(title="Relationship of father's education and Grades",
       x="father's education",
       y="Grade")+
  theme(text=element_text(size=16))+
  scale_fill_viridis(option = "inferno",discrete =FALSE)

#combine graph
ggpubr::ggarrange(g11,g12,nrow = 1,ncol = 2)

# sub-conclusion
# there is a strong relationship between the mother's education level and student's grade.
# The score and mean of student's grade increases with the mother's education level.
# Those students which having the mother's education level with 4 has score the highest grade
# Although the score and mean of student's grade also increased with their father education level, most of the mean are on the lower side of the range


#   Analysis 4.2 Find the relationship between parent job and student marks
combine_parent=gather(data_2,Parent,Parent_job,Mo_job:Fa_job,factor_key = T)
ggplot()+geom_boxplot(data=combine_parent,aes(x=Parent_job,y=AVG_Score,color=Parent_job))+
  facet_wrap(~Parent,labeller =as_labeller(c(Mo_job="Mother Job",Fa_job="Father Job")))+
  labs(title="Relationship of Parent job and student's grade",
       x="Parent's Job",
       y="Grade")+
  theme(text=element_text(size=18))

ggplot()+geom_boxplot(data=combine_parent,aes(x=Parent,y=AVG_Score,color=Parent_job))+
  facet_wrap(~Parent_job)+
  labs(title="Distribution of grades by parent job",
       x="Parent",
       y="Grade")+
  theme(text=element_text(size=18))+
  scale_x_discrete(labels=c("Mother","Father"))

# sub conclusion
# mother which works in health and teaching , and father who works as teachers make students to score higher grades than other student. 



# Analysis 4.3 Find the relationship of student grade between parent job is teacher and others
teacher=combine_parent[combine_parent$Parent_job=="teacher"|combine_parent$Parent_job=="teacher",]
no_teacher=combine_parent[combine_parent$Parent_job!="teacher"|combine_parent$Parent_job!="teacher",]
g21=ggplot()+geom_boxplot(data=teacher,aes(x=Parent,y=AVG_Score,color=Parent,group=Parent))+
  labs(title="Parent's job is teacher and grade",
       x="Parent's work as teacher",
       y="Grade")+
  theme(text=element_text(size=16))

g22=ggplot()+geom_boxplot(data=no_teacher,aes(x=Parent,y=AVG_Score,color=Parent,group=Parent))+
  labs(title="Parent's job isn't teacher and grade",
       x="Parent's work as other jobs",
       y="Grade")+
  theme(text=element_text(size=16))
#combine graph
ggpubr::ggarrange(g21,g22,nrow = 1,ncol = 2)

# sub-conclusion
# students whose parents are teachers have higher range of grades than students whose parents are other jobs


# Analysis 4.4 Find the relationship between parent living status with grades
summary(data_2$parent_living_status)
Apart=data_2 %>% filter(parent_living_status=="A")
Togather=data_2 %>% filter(parent_living_status=="T")
Togather=Togather %>% head(50) %>% rbind(tail(Togather,50))
data_9=rbind(Apart,Togather)

ggplot(data_9,aes(x=parent_living_status,y=AVG_Score),group=parent_living_status)+
  geom_dotplot(binaxis = "y",stackdir = "center",binwidth = 0.5,aes(fill=parent_living_status))+
  geom_boxplot(width=0.1)+
  labs(title="Relationship of parent living status and student's grade",
       x="Parent living status",
       y="Grade")+
  theme(text=element_text(size=14))+
  scale_x_discrete(labels=c("Apart","Togather"))+
  scale_fill_discrete(labels=c("Apart","Togather"))

# sub-conclusion
# the student who parent living status with apart will score a lower mark than student who parent living status with together


# Analysis 4.5 Find the relationship between guardian with grades
data_2_1=data_2
data_2_1$guardian=as.factor(data_2_1$guardian)

summary(data_2_1$guardian)
g19=ggplot(data_2_1,aes(x=guardian,fill=..count..))+geom_bar()+
  labs(title="Distribution of guardian",
       x="guardian",y="Count")+
  theme(text=element_text(size=14))+
  scale_x_discrete(labels=c("father","mother","other"))

g20=ggplot(data_2_1,aes(x=guardian,y=AVG_Score))+
  geom_violin(scale="area",aes(fill=guardian))+
  geom_boxplot(width=0.2)+
  labs(title="Relationship of guardian with grade",
       x="guardian",y="Grade")+
  theme(text=element_text(size=14))+
  scale_x_discrete(labels=c("father","mother","other"))


#combine graph
ggpubr::ggarrange(g19,g20,nrow = 1,ncol = 2,widths = c(1,1.5))

# sub-conclusion
# the student who guardian with mother can score higher range and highest score, and the student who guardian with other has scored lowest score



# Analysis 4.6 Find the relationship between parent education support with grade

ggplot(data_2,aes(fam_edu_sup,AVG_Score,group=fam_edu_sup))+
  geom_violin(aes(fill=fam_edu_sup),trim=F)+
  geom_boxplot(width=0.2)+
  labs(title="Relationship of family educational\nsupport and Grades",
       x="family educational support",
       y="Grade")+
  theme(text=element_text(size=14))

# sub-conclusion
# the student who has no family education support is score the highest and the higher mean of range
# the student who has family education support score the higher frequency in grade 10.

# conclusion of question 4
# a higher education level and works in teacher, or health can affect student to score higher marks
# the best profession for parent is that of a teacher, and they no need to give the family educational support to the student
# parent living together and guardian is mother or father will affect student score higher grades


# Question5 How does family relationship quality affect student
#   Analysis 5.1 Find the relationship between family relationship quality and grade
summary(data_2$fam_rel_quality)

g13=ggplot(data_2,aes(fam_rel_quality,AVG_Score))+geom_hex(bins=20)+
  labs(title="Relationship of family relationship\n quality and Grades",
       x="quality of family relationship",
       y="Grade")

g14=ggplot(data_2,aes(fam_rel_quality,AVG_Score))+geom_boxplot(aes(group=fam_rel_quality,fill=fam_rel_quality))+
  labs(title="Relationship of family relationship\n quality and Grades",
       x="quality of family relationship",
       y="Grade")+
  scale_fill_viridis(option = "C",discrete =FALSE)

#combine graph
ggpubr::ggarrange(g13,g14,nrow = 1,ncol = 2)

#sub-conclusion
# the most student has the quality of family relationships with 4-5 levels
# Most of that student has score 10 grades with the quality of family relationship with 4
# as the grade of the family relationship increases, so does the student's highest grade
# the range of each level is increase based on the level of quality of family relationships
# the grade of student is increasing according to the level of family relationship's quality

#   Analysis 5.2 Find the relationship between family relationship quality and absence

data_2 %>% filter(num_absences<30) %>% ggplot(aes(x=fam_rel_quality,y=num_absences))+
  geom_boxplot(aes(group=fam_rel_quality))+
  labs(title="Relationship of family relationship quality with absence",
       x="quality of family relationship",
       y="absence")
# sub-conclusion
# quality of family relationship with 4 has the highest amount of student absence
# The range of absences decrease with the quality of family relationship
# The highest mean of absence is in student who quality of family relationship with 2


#Analysis 5.3 Find the relationship between quality of family relationship and family size
summary(data_2$fam_size)
ggplot(data_2,aes(x=fam_size,fill=..count..))+geom_bar()+
  labs(title="Distribution of family size",
       x="family size",y="Count")+
  scale_x_discrete(labels=c("Greater than 3","Lower than 3"))


ggplot(data_2,aes(x=fam_size,y=fam_rel_quality))+
  geom_violin(aes(fill=fam_size),trim=F)+
  geom_boxplot(width=0.1)+
  labs(title="Relationship of family size and family\nrelationship quality",
       x="family size",y="family relaitionship quality")+
  scale_x_discrete(labels=c("Greater than 3","Lower than 3"))+
  scale_color_discrete(labels=c("Greater than 3","Lower than 3"))

# sub-conclusion
# most of both family size has the family relationship quality with 4.
# family size with lower than 3 has get the lower range and lowest mark of family relationship quality