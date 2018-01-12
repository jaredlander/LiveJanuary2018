data(tips, package='reshape2')
head(tips)

unique(tips$sex)
tips$sex

head(tips)

mean(tips$tip)
sd(tips$tip)

t.test(tips$tip, alternative='two.sided', mu=2.50)

head(tips)

t.test(tip ~ sex, data=tips, var.equal=TRUE)
?t.test
