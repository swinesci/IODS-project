


## Read human data
hd <- read.csv("http://s3.amazonaws.com/assets.datacamp.com/production/course_2218/datasets/human_development.csv", stringsAsFactors = F)

## look at the data
str(hd)
dim(hd)


## Read gender data
gii <- read.csv("http://s3.amazonaws.com/assets.datacamp.com/production/course_2218/datasets/gender_inequality.csv", stringsAsFactors = F, na.strings = "..")

## look at the data
str(gii)
dim(gii)

summary(hd)

hd %>% 
  gather(key=var_name, value = value) %>% 
  ggplot(aes(x=value)) +
  geom_histogram() +
  facet_wrap(~var_name, scales = "free_x")

summary(gii)
