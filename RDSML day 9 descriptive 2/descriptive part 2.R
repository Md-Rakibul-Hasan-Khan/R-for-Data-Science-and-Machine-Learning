# Descriptive statistics using the psych package

# install.packages("psych")
library(psych)

data()
AirPassengers
BOD

# Using the New York airport flight data
install.packages("nycflights13")
attach(nycflights13::flights)

# Lets look at the first 6 records using the head() function
head(nycflights13::flights)
distance
summary(distance)
describe(distance)

demo = cbind(arr_delay, dep_delay, distance)
describe(demo)

# introducing the colnames() functions
colnames(demo) = c("arrival delay","departure","distance traveled")
describe(demo)

# introducing the hist() function
dep_delay
hist(dep_delay)

# how to group descriptive statistics
summary(carrier)
carrier.fact = factor(carrier)
summary(carrier.fact)

describeBy(distance, group = carrier)

# two levels of aggregation
aggregate(distance, by = list(carrier, month), FUN = mean, na.rm = TRUE)




