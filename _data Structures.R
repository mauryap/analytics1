c(2,4,6)
2:6
seq(2,3, by = 0.5)
?seq(2,3, by = 0.5)
# if change sequence 
seq( by = 0.5, from = 2,to = 3)# Give arguement name if other than default sequence
rep (1:2, times=4) # repetition of numbers
rep (c(3,4,5,6,1:3), times = 3)
(x1 = 1:30) #assigning and printing together using ()
(x2 = c(1,2,13,4,5))
class(x2)
(x3 = c('a',"ABC"))
class(x3)
(x3=letters[1:10])
class(x3)
letters[1:26]
(x3b = c('a',"henry",4))
class(x3b)

(x4=c(T,FALSE,TRUE,T,F))
class(x4)
class(c(3,5))
x5 = c(3L,5L)
class(x5)
x5a = c(3,5,4.5)
class(x5a)
as.integer(x5a) # truncate the decimal part of it
x[1:10] = 1 # array of 1 in matrix 1:10
x

(x5b = c(1,'a',T,4L))
class(x5b)

#access elements
x6 = seq(0,100,by = 3)
x6
x6[4]# access the 4th element
x6[1:5]
seq(1,34,by = 2)
x6[ seq(1, length(x6), by = 2)]
x6[c(2,4)]
x6[-1] # access all  but 1st value
x6[-c(1:10,15:20)] #except 1 to 10 and 15 to 20
x6[c(2,-4)] #cannot mis possitive and negative integers
x6[c(2.4,3.54)]
x6
x6[x6<30]
x6[x6>36]
x6[x6 > 30 & x6 < 40] # values between 31 to 39
length(x6)
x6[-(length(x6)-1)]
x7=c(x6,x2)
x2=3
x7=c(x6,x2)
# modify
x6
set.seed(1234)

(x6 = sample (1:50)) # randomization

sort(x6)
sort(x6[-c(1,2)])
sort(x6, decreasing = T)
rev(x6)
 # modify value
x6
x6[2:10] <- 99
x6

x6[x6 > 30 & x6 < 40] = 999
x6

x6
x7 = x6[1:4]; x7 # truncate to first 4 elements
#[1] 5 0 5 0

1:5
#equal partition within range
(x = seq(1,5, length.out = 15))
x = NULL

X

x[4]
#NULL
# Distribution ----
?distribution

?rnorm
(x1 = rnorm(100,mean = 50, sd= 5))
plot(density(x1))  
abline(v=mean(x1), h=0.04)
hist(x1)
hist(x1, freq=F) #frequency false to show the % i.e. the density of frequency
lines(density(x1), col = 2)
summary(x1)
stem(x1)

# matrix----
100:111
length(100:111)
(m1 = matrix(100:111, nrow = 4 ))
(m2 = matrix(100:111, ncol = 4, byrow = T))
m2[1,1:2]
m2[2,3]  
length(x)
z = 1:24
m3 = matrix(z,ncol=6)
class(m3)
m3[1,1]; m3[3,6]; m3[3,4]
m2[1,]# show only first row
m3[,-1]# removes the first column
m3[,1, drop = F]
m3[c(1,3),]# 1st and 3rd row all column elements
m3[-c(1,3), ]
m3[m3>105 & m3<108]
m3
(colnames(m3) = paste('C',1:6,sep = '-')) # naming done of each column
m3
(rownames(m3) = paste('R',1:4,sep = '-')) # naming done of each row
m3
attributes(m3)
m3[,c('C-1','C-3')]
m3[,c(1,3)]

# vector to matrix
(v3 = 1:24)
v3
dim(v3)= c(6,4)
v3

v3[1,1] = 12
v3
v3[v3>22] = 999
v3
rbind(v3,c(26,27,23,26)) # adding extra row to the matrix
cbind(v3,c(1,1,1,1,1,1)) # adding extra column to the matrix

colSums(v3) # sum of all columns
rowSums(v3) # sum of all rows

colMeans(v3)
rowMeans(v3)
t(v3) # Transpose the matrix
v3

sweep(v3, MARGIN = 1,c(1,2,3,4,5,6), FUN = "+") # add or multiply anything to the row and for column use margin = 2

#add Margins
v3

addmargins(v3,margin = 1,sum) # rowise function
addmargins(v3,margin = 2, sum)

addmargins(v3,c(1,2), sum) 
v4 = addmargins(v3,c(1,2), list(list(mean,sum,max), list(var,sd))) # row and coulmn wise function
round(v4)
?list

# data Frames ----
# Create Data Frame
# different data type matrix
(rollNo = 1:30)
(sname = paste('student', 1:30 ,sep = ''))
(gender = sample(c('M','F'), size = 30 , replace = T , prob = c(.7,.3)))
table(gender)
prop.table(table(gender)) #proportion of the table
(marks1 = floor(rnorm(30,mean = 50,sd = 10)))
(marks2 = ceiling(rnorm(30,40,5)))# floor floor 3.4 will become 3 that is lowers to the nearest integer
# ceiling will increase to highest integer nearest
#Truncate reduce decimals
# ROund upto decimal values
(course = sample(c('BBA','MBA'),size = 30, replace = T,prob = c(.5,0.5)))
rollNo; sname; gender
marks1; marks2; course


# Create a DataFrame
df1= data.frame(rollNo, sname, gender, marks1, marks2, course, stringsAsFactors = F)
df1
str(df1) # structure of Data Frame
head(df1) # top 6 rows
head(df1,n=3) # top 3 rows

tail(df1) # last 6 rows
class(df1) #DF
summary(df1) # summary
df1$course
dim(df1)
length(df1)
# factor can be ordered or unordered depending on that calle das ordinal and nominal data
df1$gender = factor(df1$gender) 
df1$course = factor(df1$course)
str(df1) # tells about what type of data type is and based on it type and requirement
#df1$sname = as.character(df1$sname)
summary(df1)
#boxplot 5 value data mean median quartile etc/
boxplot(marks1~ gender + course, data = df1) # shows maximum variationa nd mean ets. grapf
df1 # full data
df1$gender
head(df1[,c(2,4)]) # multiple column
df1[1:10,]
df1('rollno')
#as per condition
df1[marks1 > 20 & gender== 'F' , c('rollNo','gender','marks1')]

# gradeFactor == by default ordering
# gradefactorordered == abcd
# gradefactororedredlevel === as per order and level set up
(grades = sample(c('A','B','C','D'),size = 30, replace = T, prob = c(0.3,0.2,0.4,0.1)))
summary(grades)
table(grades)
(gradeFactor = factor(grades))
summary(gradeFactor)
(gradeFactorOrderedLevels= factor(grades,ordered = T, levels = c('D','C','B','A')))
summary(gradeFactorOrderedLevels)
gradeFactor
#gradeFactorOrdered
gradeFactorOrderedLevels
pie(summary(gradeFactorOrderedLevels)) # pie chart creation
