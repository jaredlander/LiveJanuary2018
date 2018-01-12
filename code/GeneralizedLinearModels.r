library(readr)
lots <- read_csv('https://jaredlander.com/data/manhattan_Train.csv')

head(lots)
View(lots)

names(lots)
value1 <- glm(High ~ LotArea + Landmark + NumFloors,
              data=lots,
              family=binomial)
summary(value1)
library(coefplot)

coefplot(value1, sort='magnitude')
coefplot(value1, sort='magnitude', trans=invlogit)
packageVersion('coefplot')

floor1 <- glm(NumBldgs ~ LotArea + Landmark,
              data=lots,
              family=poisson)
coefplot(floor1, sort='magnitude')

floor2 <- glm(NumBldgs ~ LotArea + Landmark,
              data=lots,
              family=quasipoisson)
summary(floor2)
coefplot(floor2, sort='magnitude')

multiplot(floor1, floor2, sort='magnitude')
