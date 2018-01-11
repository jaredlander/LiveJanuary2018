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

