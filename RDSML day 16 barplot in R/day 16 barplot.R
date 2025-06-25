# inputting a data set manually
dataset = data.frame(dose = 
                       c("d0.5", 'd1', 'd2'), 
                     len = c(4.2, 10, 29.5))
library(ggplot2)
# basic bar plot
idea = ggplot(data = dataset, aes(x = dose, y = len)) + 
  geom_bar(stat = "identity")

# horizontal bar plot
idea + coord_flip()

# changing the width of bars
ggplot(data = dataset, aes(x = dose, y = len)) + 
  geom_bar(stat = "identity", width = 0.5)

# changing colors
ggplot(data = dataset, aes(x = dose, y = len)) + 
  geom_bar(stat = "identity", width = 0.5, 
           color = "black", fill = "grey")

# minimal theme with blue fill color
ggplot(data = dataset, aes(x = dose, y = len)) + 
  geom_bar(stat = "identity", width = 0.5, 
           fill = "steelblue") + theme_minimal()

# bar plot with labels
# outside bars
ggplot(data = dataset, aes(x = dose, y = len)) + 
  geom_bar(stat = "identity", width = 0.5, 
           fill = "steelblue") + geom_text(aes(label = len), 
                                           vjust = -0.25, size = 3.5, color = "black") +
  theme_minimal()

# inside bars
ggplot(data = dataset, aes(x = dose, y = len)) + 
  geom_bar(stat = "identity", width = 0.5, # identity = direct value use
           fill = "steelblue") + geom_text(aes(label = len), 
                                           vjust = 1.67, size = 3.5, color = "white") +
  theme_minimal()

mycar = mtcars
# bar plot of counts
# to make a bar plot of counts, we will use mtcars dataset
ggplot(data = mycar, aes(x = factor(cyl))) + 
  geom_bar(stat = "count", width = 0.5, fill = "steelblue") # count= not the value, number of entity instead

# changing barplot line colors by groups 
ggplot(dataset, aes(x= dose, y= len, color = dose)) +
  geom_bar(stat = "identity", fill = "grey")

# using custom color palettes
ggplot(dataset, aes(x= dose, y= len, color = dose)) +
  geom_bar(stat = "identity", fill = "grey") + 
  scale_color_manual(values = c("blue", "red", "#000000"))

# using brewer color palettes
ggplot(dataset, aes(x= dose, y= len, color = dose)) +
  geom_bar(stat = "identity", fill = "grey") + 
  scale_color_brewer(palette = "Accent")

# using grey scale
ggplot(dataset, aes(x= dose, y= len, color = dose)) +
  geom_bar(stat = "identity", fill = "white") + 
  scale_color_grey() + theme_classic()

# changing barplot fill colors by group
p = ggplot(dataset, aes(x= dose, y= len, fill = dose)) +
  geom_bar(stat = "identity") + theme_minimal()

p + scale_fill_manual(values = c("skyblue", "royalblue", "navyblue"))  

p + scale_fill_brewer(palette = "Dark2")

p + scale_fill_grey()

# using black outline color
ggplot(dataset, aes(x = dose, y = len, fill = dose)) +
  geom_bar(stat = "identity", color = "black") +
  scale_color_manual(values = c("#85713a", "#c72ce6", "#f00a24")) +
  theme(legend.position = "top")
