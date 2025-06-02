# install.packages("ggplot2")
library(ggplot2)

dataset = mtcars
View(dataset)

# generating a basic scatter plot
ggplot(dataset, aes(x = wt, y = mpg)) + 
  geom_point()

# changing the point size and shape
ggplot(dataset, aes(x = wt, y = mpg)) + 
  geom_point(size=2, shape=19)

# adding the regression line
ggplot(dataset, aes(x = wt, y = mpg)) + 
  geom_point(size=2, shape=19) + geom_smooth(method = lm)

# removing the confidence interval
ggplot(dataset, aes(x=wt, y=mpg)) + 
  geom_point() + 
  geom_smooth(method = lm, se = F)

# loess method
ggplot(dataset, aes(x=wt, y=mpg)) + 
  geom_point() + 
  geom_smooth()
# output: loess line

# change the line type and color
ggplot(dataset, aes(x = wt, y = mpg)) + 
  geom_point(size=2, shape=19) + 
  geom_smooth(method = lm, 
              linetype = "dotted",
              color = "red")

# changing the confidence interval color
ggplot(dataset, aes(x = wt, y = mpg)) + 
  geom_point(size=2, shape=19, color = "brown") + 
  geom_smooth(method = lm, 
              linetype = "dotted",
              color = "red", fill = "blue")

# scatter plots with multiple groups

# changing the point shapes by the levels of cyl
ggplot(dataset, aes(x=wt, y=mpg, shape=cyl)) +
  geom_point()

# converting the cyl column froma numeric to factor variable
dataset$cyl = as.factor(dataset$cyl)

# changing point shapes and colors
ggplot(dataset, aes(x=wt, y=mpg, 
                    shape=cyl, 
                    color = cyl)) +
  geom_point()

# changing point shapes, colors and sizes
ggplot(dataset, aes(x=wt, y=mpg, 
                    shape = cyl, 
                    color = cyl,
                    size = cyl)) +
  geom_point()

