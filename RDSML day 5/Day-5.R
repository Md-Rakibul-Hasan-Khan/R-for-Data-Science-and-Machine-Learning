# vectors in R

student.height = c(60, 62, 58)



#checking the class of the vector
is.numeric(student.height)
is.logical(student.height)

# R automatically converts numeric text, when i have a text item in the vector
b = c(5, 8, "sv")
b
is.numeric(b)
is.character(b)

# we can convert data types
# numeric to character
a <- c(1, 2, 3, 4, 5)
class(a)

a = as.character(a)
class(a)

# logical operator TRUE and FALSE when converted to numeric, TRUE converts to 1, and FALSE converts to 0
d = c(T, F, F, T, F)
d = as.numeric(d)
d

# numeric to logical - 1 or any other number convert to T, 0 converts to F
d = as.logical(d)
d

e = c(1,0,0,1,0,23,-7,0)
e = as.logical(e)
e

# creating a sequential vector
# creating a vector starting from 1 to 10
my.seq = c(1:10)
my.seq

f.hg = c(1:50, 88,55, 65, 70:80)
f.hg

# creating a sequential vector using seq() function
new.seq = c(seq(1,100))
new.seq

# seq in steps of 3
new.seq = c(seq(1,100,by=3))
new.seq

# vectors can have character
names = c("rakib", "mahfuza", "ratan", "asif")
names
class(names)
names[4]
names[2:4]

# assigning names to vector values 
my.values = c(4,7,9,11)
names(my.values) = c('a','b','c','d')
my.values
my.values['d']

my.values[d]
