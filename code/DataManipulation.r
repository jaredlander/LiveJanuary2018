library(dplyr)
data(diamonds, package='ggplot2')
diamonds

head(diamonds)
head(diamonds, n=3)

tail(diamonds)
tail(diamonds, n=2)

tail(head(diamonds, n=4), n=1)

head(diamonds)
diamonds %>% head()
diamonds %>% head(n=4)
head(diamonds, n=4)

tail(head(diamonds, n=4), n=1)
diamonds %>% head(n=4) %>% tail(n=1)

select(diamonds, carat, price)
diamonds
diamonds %>% select(carat, price)

diamonds %>% filter(cut == 'Ideal')
diamonds %>% filter(cut == 'Ideal' & price > 500)

diamonds %>% slice(7)
diamonds %>% slice(c(7, 13))
diamonds %>% slice(7:13)

diamonds %>% mutate(price / carat)
diamonds
diamonds %>% mutate(Ratio=price / carat)

diamonds2 <- diamonds %>% mutate(Ratio=price/carat)
diamonds2


diamonds %>% summarize(mean(price))
diamonds %>% summarize(AvgPrice=mean(price))

diamonds %>% group_by(cut)

diamonds %>% group_by(cut) %>% summarize(AvgPrice=mean(price))

diamonds %>% 
    group_by(cut) %>% 
    summarize(AvgPrice=mean(price), TotalCarat=sum(carat))

diamonds %>% 
    group_by(cut, color) %>% 
    summarize(AvgPrice=mean(price), TotalCarat=sum(carat))

diamonds %>% count(cut)


diamonds %>% 
    group_by(cut, color) %>% 
    summarize(AvgPrice=mean(price), TotalCarat=sum(carat)) %>% 
    arrange(desc(AvgPrice))

diamonds %>% 
    group_by(cut, color) %>% 
    summarize(AvgPrice=mean(price), TotalCarat=sum(carat), Count=n())

diamonds %>% 
    filter(color == 'H') %>% 
    summarize(AvgPrice=mean(price))

library(readr)
diamondColors <- read_csv('data/DiamondColors.csv')
head(diamondColors)

diamonJoin <- left_join(diamonds, diamondColors, by=c('color'='Color'))
head(diamonJoin)
