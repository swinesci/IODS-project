Taehee Han
6.11.2019

lrn14 <- read.table("https://www.mv.helsinki.fi/home/kvehkala/JYTmooc/JYTOPKYS3-data.txt", sep="\t", header=TRUE)

dim(lrn14) #to see dimmension
str(lrn14) #to see structure

library(dplyr) #to set dplyr



lrn14$attitude <- lrn14$Attitude / 10

#Scale all combination variables to the original scales (by taking mean)
deep_columns <- select(lrn14, one_of(deep_questions))
deep_questions <- c("D03", "D11", "D19", "D27", "D07", "D14", "D22", "D30","D06",  "D15", "D23", "D31")
surface_questions <- c("SU02","SU10","SU18","SU26", "SU05","SU13","SU21","SU29","SU08","SU16","SU24","SU32")
strategic_questions <- c("ST01","ST09","ST17","ST25","ST04","ST12","ST20","ST28")
deep_columns <- select(lrn14, one_of(deep_questions))
lrn14$deep <- rowMeans(deep_columns)
surface_columns <- select(lrn14, one_of(surface_questions))
lrn14$surf <- rowMeans(surface_columns)
strategic_columns <- select(lrn14, one_of(strategic_questions))

 lrn14$stra <- rowMeans(strategic_columns)

#to keep colums that we only need  
keep_columns <- c("gender","Age","attitude", "deep", "stra", "surf", "Points")

learning2014 <- select(lrn14, one_of(keep_columns))

colnames(learning2014)
[1] "gender"   "Age"      "attitude" "deep"    
[5] "stra"     "surf"     "Points"  

#to change col name
colnames(learning2014)[2] <- "age"
colnames(learning2014)[7] <- "points"
colnames(learning2014)
library(dplyr)

#remove the value under zore
learning2014 <- filter(learning2014, points > 0)


#set working directory
setwd("Z:/IODS-project")

#to make a table
write.csv(learning2014)

#to make a table in the project
write.csv(learning2014, 'Z:\\IODS-project\\data\\learning2014.csv')

#to read table
read.csv('Z:\\IODS-project\\data\\learning2014.csv')
str(lrn14)
head(lrn14)

