Taehee Han 13.11.2019 Excersize 3

human <- read.table("http://s3.amazonaws.com/assets.datacamp.com/production/course_2218/datasets/human1.txt", sep  =",", header = T)

#This is continuum for last week's data wrangling. We are continuing with the same data.
#1. mutate data GNI to numeric

human <- mutate(human, GNI = as.numeric(human$GNI))
str(human)

library(stringr)
# remove the commas from GNI and print out a numeric version of it
str_replace(human$GNI, pattern=",", replace ="") %>% as.numeric

#2. Keep columns: (described in the meta file above):  "Country", "Edu2.FM", "Labo.FM", "Edu.Exp", "Life.Exp", "GNI", "Mat.Mor", "Ado.Birth", "Parli.F"

keep <- c("Country", "Edu2.FM", "Labo.FM", "Life.Exp", "Edu.Exp", "GNI", "Mat.Mor", "Ado.Birth", "Parli.F")

# select the 'keep' columns
human <- select(human, one_of(keep))

#3.Remove rows with missing values
#create column with missing values and then filter leaving NA's out.
complete.cases(human)

data.frame(human[-1], comp = complete.cases(human))
str(human)


# look at the last 10 observations
tail(human, 10)

# last indice we want to keep
last <- nrow(human) - 7

# choose everything until the last 7 observations
human_ <- human[1:155, ]

# add countries as rownames
rownames(human) <- human$Country

# modified human, dplyr and the corrplot functions are available

# remove the Country variable
human <- dplyr::select(human, -Country)


#Now we have wanted 155 observations and 8 variables, with countries as rownames.
#override the old data:

write.csv(human, file = "human.csv", row.names = FALSE)
human <- read.csv("human.csv", sep=",", header= T)
str(human)
summary(human)
complete.cases(human)
head(human)
