# descriptive statistics using the psych package

# installing packages
install.packages("psych")
library(psych)

data()
AirPassengers
BOD

# using the New York airport flight data
install.packages("nycflights13")
nycflights13
attach(nycflights13::flights)

# lets look at the first 6 records using the head() function
head(nycflights13::flights)
summary(distance)

demo = cbind(arr_delay, dep_delay, distance)
describe(demo)





