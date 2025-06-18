# Importing the dataset
dataset = read.csv("data.csv")

# Importing the library
library(ggplot2)

# creating the basic historam
ggplot(dataset, aes(x=weight))+
  geom_histogram(color = "white") # boundary color

# changing histogram plot line colors by groups
ggplot(dataset, aes(x=weight, fill = sex))+
  geom_histogram(color = "white", alpha = 0.6,
                 position = "identity")
# we can change the position adjustment to use for lapping points on the layer
# possible values for the argument position are "identity","stack","dodge". Default is "stack"

# Interleaved histogram
ggplot(dataset, aes(x=weight, fill = sex))+
  geom_histogram(color = "white", alpha = 0.6,
                 position = "dodge") +
  theme(legend.position = "top")
  
# the plyr package is used to calculate the mean weight of each group
install.packages("plyr")
library(plyr)
group_means = ddply(dataset, "sex",
                    summarise, grp.mean = mean(weight))
group_means

# adding mean lines
myplot = ggplot(dataset, aes(x=weight, fill = sex))+
  geom_histogram(color = "white", alpha = 1,
                 position = "dodge") +
  geom_vline(data = group_means, aes(xintercept = 
                                       grp.mean, color ="white"), 
             linetype = "dashed") +
  theme(legend.position = "top")
myplot

# using custom color palettes
myplot + scale_color_manual(values = c("#999999", "orange")) +
  scale_fill_manual(values = c("green", "blue"))

# using color brewer color palettes
myplot + scale_color_brewer(palette = "Dark2") + 
  scale_fill_brewer(palette = "Dark2")

# using a grey scale
myplot + scale_color_grey() + 
  scale_fill_grey() +
  theme_light()
