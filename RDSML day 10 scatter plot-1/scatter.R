# install.packages("ggplot2")
library(ggplot2)

dataset = mtcars
View(dataset)

# generating a basic scatter plot
ggplot(dataset, aes(x = wt, y = mpg)) + geom_point()

# changing the point size and shape
ggplot(dataset, aes(x = wt, y = mpg)) + geom_point(size=2, shape=19)

# adding the regression line
ggplot(dataset, aes(x = wt, y = mpg)) + geom_point(size=2, shape=19) + geom_smooth()





