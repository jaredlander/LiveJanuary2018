library(ggplot2)
data(diamonds, package='ggplot2')
diamonds

ggplot(diamonds)

ggplot(diamonds, aes(x=carat, y=price))
ggplot(diamonds, aes(x=carat, y=price)) + geom_point()

ggplot(diamonds, aes(x=carat, y=price, color=cut)) + geom_point()
ggplot(diamonds, aes(x=carat, y=price, color=cut)) + geom_point(shape=1)
ggplot(diamonds, aes(x=carat, y=price, color=cut)) + geom_point(aes(shape=cut))

ggplot(diamonds, aes(x=carat, y=price)) + geom_point() + geom_smooth()
ggplot(diamonds, aes(x=carat, y=price)) + geom_point() + geom_smooth(aes(color=cut))
ggplot(diamonds, aes(x=carat, y=price, color=cut)) + geom_point() + geom_smooth()

ggplot(diamonds, aes(x=carat, y=price, color=cut)) + geom_point() + facet_wrap( ~ cut)
ggplot(diamonds, aes(x=carat, y=price, color=cut)) + geom_point() + facet_wrap( ~ cut, scales='free')


ggplot(diamonds, aes(x=carat, y=price, color=cut)) + 
    geom_point() + 
    geom_smooth() + 
    facet_wrap( ~ cut)

ggplot(diamonds, aes(x=carat, y=price)) + 
    geom_point(aes(color=cut)) + 
    facet_wrap( ~ cut) + 
    geom_smooth()

?facet_wrap

ggplot(diamonds, aes(x=carat, y=price)) + geom_point() + scale_y_log10()

ggplot(diamonds, aes(x=price)) + geom_histogram()
ggplot(diamonds, aes(x=price)) + geom_histogram(bins=50)
ggplot(diamonds, aes(x=price)) + geom_histogram(bins=50, aes(fill=cut))

ggplot(diamonds, aes(x=price)) + geom_density()
ggplot(diamonds, aes(x=price)) + geom_density(color='red', fill='blue')

ggplot(diamonds, aes(x=cut, y=price)) + geom_boxplot()
ggplot(diamonds, aes(x=cut, y=price)) + geom_violin()
?geom_violin

# Fred Wilkerson: The Grammar of Graphics
# Ed Tufte
# Stephen Few
# Andrew Gelman

# junkcharts

p <- ggplot(diamonds, aes(x=carat, y=price)) + geom_point(aes(color=cut))
p

p + geom_smooth()

library(ggthemes)

p + theme_economist()
p + theme_economist() + scale_color_economist()
p + scale_color_brewer()

p + theme_wsj()
p + theme_tufte()

p + theme_excel() + scale_color_excel()
