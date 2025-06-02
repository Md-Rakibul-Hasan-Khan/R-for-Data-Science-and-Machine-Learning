library(ggplot2)
dataset=mtcars
dataset$cyl = as.factor(dataset$cyl)

# multiple regression line
ggplot(dataset, aes(x = wt, y = mpg, color = cyl, shape = cyl)) + 
  geom_point() + 
  geom_smooth(method = lm)

# removing confidence of interval
ggplot(dataset, aes(x = wt, y = mpg, color = cyl, shape = cyl)) + 
  geom_point() + 
  geom_smooth(method = lm, se = F)

# extending the regression line
ggplot(dataset, aes(x = wt, y = mpg, color = cyl, shape = cyl)) + 
  geom_point() + 
  geom_smooth(method = lm, se = F, fullrange = T)

# filling the color of confidence bands
ggplot(dataset, aes(x = wt, y = mpg, color = cyl, shape = cyl)) + 
  geom_point() + 
  geom_smooth(method = lm, 
              aes(fill = cyl))
                  
# changing point shapes and colors manually, placement of legend
ggplot(dataset, aes(x = wt, y = mpg, 
                    color = cyl, 
                    shape = cyl)) + 
  geom_point() + 
  geom_smooth(method = lm, 
              se = F, fullrange= T ) +
  scale_shape_manual(values = c(8,15,19)) + 
  scale_color_manual(values = c("black","orange","grey")) +
  theme(legend.position = "top")

# customizing scatter plots
ggplot(dataset, aes(x = wt, y = mpg, 
                    color = cyl, 
                    shape = cyl)) + 
  geom_point() + 
  geom_smooth(method = lm, 
              se = F, fullrange= T ) +
  scale_shape_manual(values = c(8,15,19)) + 
  scale_color_manual(values = c("black","orange","grey")) +
  labs(title = "Miles per gallon \n according to the weight", x = "Weight", y = "Miles per Gallon") + 
  # \n : works as enter key
  theme(legend.position = "top")

# customizing themes
plot = ggplot(dataset, aes(x = wt, y = mpg, 
                           color = cyl, 
                           shape = cyl)) + 
  geom_point() + 
  geom_smooth(method = lm, 
              se = F, fullrange= T ) +
  scale_shape_manual(values = c(8,15,19)) + 
  scale_color_manual(values = c("black","orange","grey")) +
  labs(title = "Miles per gallon \n according to the weight", x = "Weight", y = "Miles per Gallon") + 
  # \n : works as enter key
  theme(legend.position = "top")

plot + theme_classic()
plot + theme_minimal()
