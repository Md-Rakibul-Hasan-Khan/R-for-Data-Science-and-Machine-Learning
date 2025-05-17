# matrix in R
study.hours = c(89,69,45,75,63,54,23,25,57,10)
subject.marks = c(79,53,71,57,96,52,45,51,89,66)

# creating a matrix using just study.hours
stu.hours.mat = matrix(study.hours)
stu.hours.mat

# joining two columns in a matrix
student.data = c(study.hours, subject.marks)
student.data
# output: both the data set in a row

student.mat = matrix(student.data)
student.mat
# output: both data set in a column

student.mat = matrix(student.data, byrow = FALSE, nrow = 10)
student.mat

#naming rows and columns 
colnames(student.mat) = c("Hours","Marks")
student.mat

rownames(student.mat) = c(10:1)
student.mat

# selecting an element from a matrix
student.mat[4,1]

summary(student.mat)

# data frames in R
names = c('mr1', 'mr2', 'ms3', 'mrs4', 'ms5')
duration = c(20,30,65,26,33)
marks = c(40,55,70,45,55)
gender= c('m','m','f','f','m')
male = c(T,T,F,F,T)

stu.info = data.frame(names, duration, marks, male)
summary(stu.info)

#calling a specific column
stu.info$duration

mean(stu.info$duration)
