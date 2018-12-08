# vector (of sales data normal dist mean=80 std dev=10, number of values=100)



sales=rnorm(10000000,mean=80,sd=10)
sales
#trunc, round,floor,ceiling
sales=trunc(sales)
sales
summary(sales)
boxplot(sales)
mean(sales)
median(sales)
hist(sales)
plot(density(sales))
sd(sales)
#10-50
range(sales)
#matrix

m1 = matrix(100:123, ncol= 2)
m1


colSums(m1)
colMeans(m1)
m1[,1]
colnames(m1)= c('A','B')
head(m1)
tail(m1)


#Df
sname = paste('student', 1:30 , sep = '_')
sname
marks = trunc(runif(30, 50, 90))
(gender = sample(c('M','F'), replace=T, size = 30, prob = c(.7,.3)))
?runif
df1 = data.frame(sname, marks, gender)
df1
head(df1)
# list of all the student who have scored between 30

library(dplyr)
df1 %>% group_by(gender) %>% summarise(mean(marks), n(),min(marks), max(marks))
df1 %>% arrange(desc(marks)) %>% select( starts_with('M'))


?select
?arrange
