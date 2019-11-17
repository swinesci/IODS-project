# Excersize 3

alc <- read.csv("Z:\\IODS-project\\data\\alc.csv", sep = ",", header = TRUE)

summary(alc)

alc <- alc

# glimpse at the alc data

```r
library(tidyr)
library(dplyr)
library(ggplot2)
glimpse(alc) 
```

```
## Observations: 382
## Variables: 38
## $ X           [3m[38;5;246m<int>[39m[23m 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15,...
## $ school      [3m[38;5;246m<fct>[39m[23m GP, GP, GP, GP, GP, GP, GP, GP, GP, GP, GP, GP, GP...
## $ sex         [3m[38;5;246m<fct>[39m[23m F, F, F, F, F, M, M, F, M, M, F, F, M, M, M, F, F,...
## $ age         [3m[38;5;246m<int>[39m[23m 18, 17, 15, 15, 16, 16, 16, 17, 15, 15, 15, 15, 15...
## $ address     [3m[38;5;246m<fct>[39m[23m U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U,...
## $ famsize     [3m[38;5;246m<fct>[39m[23m GT3, GT3, LE3, GT3, GT3, LE3, LE3, GT3, LE3, GT3, ...
## $ Pstatus     [3m[38;5;246m<fct>[39m[23m A, T, T, T, T, T, T, A, A, T, T, T, T, T, A, T, T,...
## $ Medu        [3m[38;5;246m<int>[39m[23m 4, 1, 1, 4, 3, 4, 2, 4, 3, 3, 4, 2, 4, 4, 2, 4, 4,...
## $ Fedu        [3m[38;5;246m<int>[39m[23m 4, 1, 1, 2, 3, 3, 2, 4, 2, 4, 4, 1, 4, 3, 2, 4, 4,...
## $ Mjob        [3m[38;5;246m<fct>[39m[23m at_home, at_home, at_home, health, other, services...
## $ Fjob        [3m[38;5;246m<fct>[39m[23m teacher, other, other, services, other, other, oth...
## $ reason      [3m[38;5;246m<fct>[39m[23m course, course, other, home, home, reputation, hom...
## $ nursery     [3m[38;5;246m<fct>[39m[23m yes, no, yes, yes, yes, yes, yes, yes, yes, yes, y...
## $ internet    [3m[38;5;246m<fct>[39m[23m no, yes, yes, yes, no, yes, yes, no, yes, yes, yes...
## $ guardian    [3m[38;5;246m<fct>[39m[23m mother, father, mother, mother, father, mother, mo...
## $ traveltime  [3m[38;5;246m<int>[39m[23m 2, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 3, 1, 2, 1, 1, 1,...
## $ studytime   [3m[38;5;246m<int>[39m[23m 2, 2, 2, 3, 2, 2, 2, 2, 2, 2, 2, 3, 1, 2, 3, 1, 3,...
## $ failures    [3m[38;5;246m<int>[39m[23m 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,...
## $ schoolsup   [3m[38;5;246m<fct>[39m[23m yes, no, yes, no, no, no, no, yes, no, no, no, no,...
## $ famsup      [3m[38;5;246m<fct>[39m[23m no, yes, no, yes, yes, yes, no, yes, yes, yes, yes...
## $ paid        [3m[38;5;246m<fct>[39m[23m no, no, yes, yes, yes, yes, no, no, yes, yes, yes,...
## $ activities  [3m[38;5;246m<fct>[39m[23m no, no, no, yes, no, yes, no, no, no, yes, no, yes...
## $ higher      [3m[38;5;246m<fct>[39m[23m yes, yes, yes, yes, yes, yes, yes, yes, yes, yes, ...
## $ romantic    [3m[38;5;246m<fct>[39m[23m no, no, no, yes, no, no, no, no, no, no, no, no, n...
## $ famrel      [3m[38;5;246m<int>[39m[23m 4, 5, 4, 3, 4, 5, 4, 4, 4, 5, 3, 5, 4, 5, 4, 4, 3,...
## $ freetime    [3m[38;5;246m<int>[39m[23m 3, 3, 3, 2, 3, 4, 4, 1, 2, 5, 3, 2, 3, 4, 5, 4, 2,...
## $ goout       [3m[38;5;246m<int>[39m[23m 4, 3, 2, 2, 2, 2, 4, 4, 2, 1, 3, 2, 3, 3, 2, 4, 3,...
## $ Dalc        [3m[38;5;246m<int>[39m[23m 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,...
## $ Walc        [3m[38;5;246m<int>[39m[23m 1, 1, 3, 1, 2, 2, 1, 1, 1, 1, 2, 1, 3, 2, 1, 2, 2,...
## $ health      [3m[38;5;246m<int>[39m[23m 3, 3, 3, 5, 5, 5, 3, 1, 1, 5, 2, 4, 5, 3, 3, 2, 2,...
## $ absences    [3m[38;5;246m<int>[39m[23m 5, 3, 8, 1, 2, 8, 0, 4, 0, 0, 1, 2, 1, 1, 0, 5, 8,...
## $ G1          [3m[38;5;246m<int>[39m[23m 2, 7, 10, 14, 8, 14, 12, 8, 16, 13, 12, 10, 13, 11...
## $ G2          [3m[38;5;246m<int>[39m[23m 8, 8, 10, 14, 12, 14, 12, 9, 17, 14, 11, 12, 14, 1...
## $ G3          [3m[38;5;246m<int>[39m[23m 8, 8, 11, 14, 12, 14, 12, 10, 18, 14, 12, 12, 13, ...
## $ alc_use     [3m[38;5;246m<dbl>[39m[23m 1.0, 1.0, 2.5, 1.0, 1.5, 1.5, 1.0, 1.0, 1.0, 1.0, ...
## $ high_use    [3m[38;5;246m<lgl>[39m[23m FALSE, FALSE, TRUE, FALSE, FALSE, FALSE, FALSE, FA...
## $ probability [3m[38;5;246m<dbl>[39m[23m 0.1920312, 0.1647495, 0.4364540, 0.1406689, 0.1523...
## $ prediction  [3m[38;5;246m<lgl>[39m[23m FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, F...
```


# use gather() to gather columns into key-value pairs and then glimpse() at the resulting data

```r
gather(alc) %>% glimpse
```

```
## Warning: attributes are not identical across measure variables;
## they will be dropped
```

```
## Observations: 14,516
## Variables: 2
## $ key   [3m[38;5;246m<chr>[39m[23m "X", "X", "X", "X", "X", "X", "X", "X", "X", "X", "X", "...
## $ value [3m[38;5;246m<chr>[39m[23m "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11",...
```

# draw a bar plot of each variable

```r
gather(alc) %>% ggplot(aes(value)) + facet_wrap("key", scales = "free") + geom_bar()
```

```
## Warning: attributes are not identical across measure variables;
## they will be dropped
```

<img src="chapter3_files/figure-html/unnamed-chunk-37-1.png" width="672" />

# access the tidyverse libraries dplyr and ggplot2

```r
library(dplyr); library(ggplot2)
```
# produce summary statistics by group

```r
alc %>% group_by(sex, high_use) %>% summarise(count = n(), mean_grade = mean(G3))
```

library(ggplot2)

# initialize a plot of high_use and G3

```r
g1 <- ggplot(alc, aes(x = high_use, y = G3, col = sex))
```

# define the plot as a boxplot and draw it

```r
g1 + geom_boxplot() + ylab("grade")
```

<img src="chapter3_files/figure-html/unnamed-chunk-41-1.png" width="672" />

# initialise a plot of high_use and absences

```r
g2 <- ggplot(alc, aes(x = high_use, y = absences, col = sex))
```

# define the plot as a boxplot and draw it

```r
g2 + geom_boxplot() + ggtitle("Student absences by alcohol consumption and sex")
```

<img src="chapter3_files/figure-html/unnamed-chunk-43-1.png" width="672" />



# find the model with glm()

```r
m <- glm(high_use ~ failures + absences + sex, data = alc, family = "binomial")
```

# print out a summary of the model

```r
summary(m)
```

```
## 
## Call:
## glm(formula = high_use ~ failures + absences + sex, family = "binomial", 
##     data = alc)
## 
## Deviance Residuals: 
##     Min       1Q   Median       3Q      Max  
## -2.1855  -0.8371  -0.6000   1.1020   2.0209  
## 
## Coefficients:
##             Estimate Std. Error z value Pr(>|z|)    
## (Intercept) -1.90297    0.22626  -8.411  < 2e-16 ***
## failures     0.45082    0.18992   2.374 0.017611 *  
## absences     0.09322    0.02295   4.063 4.85e-05 ***
## sexM         0.94117    0.24200   3.889 0.000101 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## (Dispersion parameter for binomial family taken to be 1)
## 
##     Null deviance: 465.68  on 381  degrees of freedom
## Residual deviance: 424.40  on 378  degrees of freedom
## AIC: 432.4
## 
## Number of Fisher Scoring iterations: 4
```

# print out the coefficients of the model

```r
coef(m)
```

```
## (Intercept)    failures    absences        sexM 
## -1.90296550  0.45081981  0.09321999  0.94116602
```
# alc and dlyr are available 

# find the model with glm()

```r
m <- glm(high_use ~ failures + absences + sex, data = alc, family = "binomial")
```

# compute odds ratios (OR)

```r
OR <- coef(m) %>% exp
```
# compute confidence intervals (CI)

```r
CI <- confint(m) %>% exp
```

```
## Waiting for profiling to be done...
```

# print out the odds ratios with their confidence intervals

```r
cbind(OR, CI)
```

```
##                    OR      2.5 %   97.5 %
## (Intercept) 0.1491257 0.09395441 0.228611
## failures    1.5695984 1.08339644 2.294737
## absences    1.0977032 1.05169654 1.150848
## sexM        2.5629682 1.60381392 4.149405
```

# fit the model

```r
m <- glm(high_use ~ failures + absences + sex, data = alc, family = "binomial")
```

# predict() the probability of high_use

```r
probabilities <- predict(m, type = "response")
```

# add the predicted probabilities to 'alc'

```r
alc <- mutate(alc, probability = probabilities)
```

# use the probabilities to make a prediction of high_use

```r
alc <- mutate(alc, prediction = probability > 0.5)
```

# see the last ten original classes, predicted probabilities, and class predictions

```r
select(alc, failures, absences, sex, high_use, probability, prediction) %>% tail(10)
```

# tabulate the target variable versus the predictions

```r
table(high_use = alc$high_use, prediction = alc$prediction)
```

```
##         prediction
## high_use FALSE TRUE
##    FALSE   259    9
##    TRUE     84   30
```

# access dplyr and ggplot2

```r
library(dplyr); library(ggplot2)
```

# initialize a plot of 'high_use' versus 'probability' in 'alc'

```r
g <- ggplot(alc, aes(x = probability, y = high_use, col = prediction))
```

# define the geom as points and draw the plot

```r
g + geom_point()
```

<img src="chapter3_files/figure-html/unnamed-chunk-59-1.png" width="672" />

# tabulate the target variable versus the predictions

```r
table(high_use = alc$high_use, prediction = alc$prediction) %>% prop.table %>% addmargins
```

```
##         prediction
## high_use      FALSE       TRUE        Sum
##    FALSE 0.67801047 0.02356021 0.70157068
##    TRUE  0.21989529 0.07853403 0.29842932
##    Sum   0.89790576 0.10209424 1.00000000
```

# the logistic regression model m and dataset alc with predictions are available

# define a loss function (average prediction error)

```r
loss_func <- function(class, prob) {
  n_wrong <- abs(class - prob) > 0.5
  mean(n_wrong)
}
```

# call loss_func to compute the average number of wrong predictions in the (training) data

```r
loss_func(class = alc$high_use, prob = alc$probability)
```

```
## [1] 0.2434555
```
# the logistic regression model m and dataset alc (with predictions) are available

# define a loss function (average prediction error)

```r
loss_func <- function(class, prob) {
  n_wrong <- abs(class - prob) > 0.5
  mean(n_wrong)
}
```

# compute the average number of wrong predictions in the (training) data

```r
loss_func(class = alc$high_use, prob = alc$probability)
```

```
## [1] 0.2434555
```


# K-fold cross-validation

```r
library(boot)
cv <- cv.glm(data = alc, cost = loss_func, glmfit = m, K = 10)
```

# average number of wrong predictions in the cross validation

```r
cv$delta[1]
```

```
## [1] 0.2434555
```



