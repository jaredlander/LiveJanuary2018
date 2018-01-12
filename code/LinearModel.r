data(father.son, package='UsingR')
head(father.son)
?UsingR::father.son

library(ggplot2)

ggplot(father.son, aes(x=fheight, y=sheight)) + geom_point()
ggplot(father.son, aes(x=fheight, y=sheight)) + 
    geom_point() + geom_smooth(method='lm')

heightsLM <- lm(sheight ~ fheight, data=father.son)
heightsLM

33.88 + 60*0.51
33.88 + 68*0.51
33.88 + 57*0.51

summary(heightsLM)

# 33.88 +/- 2*1.83

boros <- tibble::tribble(
    ~ Boro, ~ Pop, ~ Size, ~ Random,
    'Manhattan', 1600000, 23, 7,
    'Brooklyn', 2600000, 78, 24,
    'Queens', 2330000, 104, pi,
    'Bronx', 1455000, 42, 21,
    'Staten Island', 475000, 60, 3
)
boros

source('https://raw.githubusercontent.com/jaredlander/LiveJanuary2018/master/code/Boros.r')
boros

model.matrix( ~ Pop, data=boros)
model.matrix(~ Pop + Size, data=boros)
model.matrix(~ Pop + Size - 1, data=boros)

model.matrix(~ Pop * Size, data=boros)

model.matrix(~ Pop * Size * Random, data=boros)

model.matrix(~ Pop + log(Size), data=boros)

model.matrix(~ Boro, data=boros)

model.matrix(~ Pop + Boro, data=boros)

data(diamonds, package='ggplot2')
head(diamonds)

priceLM1 <- lm(price ~ carat + table, data=diamonds)
priceLM1
summary(priceLM1)

priceLM2 <- lm(price ~ carat + table + x + y + z, data=diamonds)
summary(priceLM2)

library(coefplot)
coefplot(priceLM2)
coefplot(priceLM2, sort='magnitude')
?coefplot
?coefplot.default
coefplot(priceLM2, sort='magnitude', lwdInner=0.5)

head(diamonds)

library(dplyr)
diamonds <- diamonds %>% 
    mutate(cut=factor(cut, ordered=FALSE),
           color=factor(color, ordered=FALSE))
head(diamonds)

priceLM3 <- lm(price ~ carat + table + x + y + z + cut + color, data=diamonds)
coefplot(priceLM3, sort='magnitude')
summary(priceLM3)

priceLM4 <- lm(price ~ scale(carat) + table + cut + color, data=diamonds)
coefplot(priceLM4, sort='magnitude')
sd(diamonds$carat)

AIC(priceLM1, priceLM2, priceLM3, priceLM4)
BIC(priceLM1, priceLM2, priceLM3, priceLM4)
