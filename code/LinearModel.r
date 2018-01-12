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
