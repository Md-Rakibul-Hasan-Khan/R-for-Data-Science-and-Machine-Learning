# factors in R

# summary of numeric items
participents.age = c(78,25,68,48,35)
summary(participents.age)

# summary of character vector
profession = c('doctor','teacher','teacher','student','engineer')
summary(profession)

# renaming the variable, transforming vector to factor
profession = factor(profession)
summary (profession)

# putting the summary in order
birth.month = c('jan','dec','apr','aug','mar','apr','jun','mar','apr','dec','ul','nov','nov','dec','mar','jan', 'mar','apr')
summary(birth.month)

# factor : to categorize the data
birth.month=factor(birth.month)
summary(birth.month)

# making the in order
birth.month=factor(birth.month,
                   ordered = TRUE, 
                   levels = c('jan','feb','mar','apr','may','jun','ul','aug','sep','oct','nov','dec'))
summary(birth.month)

# lists in R
# lists are used to place number of items in a bundle
a= c(2,4,7)
b= c('red','green','blue')
c = 'Welcome!'

my.list=list(a,b,c)
my.list

# naming the listed items
my.list=list(pieces=a, blocker=b, colors=c)
my.list

# calling specific data structure
my.list[2]
my.list$pieces

# calling specific items from the data structure
my.list$pieces[2]

