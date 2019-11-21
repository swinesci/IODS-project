


## Read human data
hd <- read.csv("http://s3.amazonaws.com/assets.datacamp.com/production/course_2218/datasets/human_development.csv", stringsAsFactors = F)

## look at the data
str(hd)
dim(hd)

summary(hd)

colnames(hd)


#to change col name
colnames(hd)[1] <- "hdiRank"
colnames(hd)[2] <- "country"
colnames(hd)[3] <- "HDI"
colnames(hd)[4] <- "lifeExaBirth"
colnames(hd)[5] <- "expectedYofEdu"
colnames(hd)[6] <- "meanYofEdu"
colnames(hd)[7] <- "GNIperCap"
colnames(hd)[8] <- "GNIperCapRank"

colnames(hd)

library(dplyr)
## Read gender data
gii <- read.csv("http://s3.amazonaws.com/assets.datacamp.com/production/course_2218/datasets/gender_inequality.csv", stringsAsFactors = F, na.strings = "..")

## look at the data
str(gii)
dim(gii)

summary(gii)

colnames(gii)
colnames(gii)[1] <- "GIIRank"
colnames(gii)[2] <- "country"
colnames(gii)[3] <- "GII"
colnames(gii)[4] <- "mortality"
colnames(gii)[5] <- "birthrate"
colnames(gii)[6] <- "par"
colnames(gii)[7] <- "edu2F"
colnames(gii)[8] <- "edu2M"
colnames(gii)[9] <- "labF"
colnames(gii)[10] <- "labM"

colnames(gii)

# Mutate variable
gii <- mutate(gii, edu2Fedu2M = edu2F / edu2M)
gii <- mutate(gii, labFlabM = labF / labM)

colnames(gii)

join_by <- c("country")
human <- inner_join(hd, gii, by = join_by, suffix = c(".hd",".gii"))

human

glimpse(human)

write.table(human)
write.csv(human, 'Z:\\IODS-project\\data\\human.csv')
