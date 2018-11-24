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

?distribution

?rnorm
(x1 = rnorm(100,mean = 50, sd= 5))
plot(density(x1))  
abline(v=mean(x1), h=0.04)
hist(x1)
hist(x1, freq=F) #frequency false to show the % i.e. the density of frequency
lines(density(x1), col = 2)
summary(x1)

# matrix------
100:111
length(100:111)
(m1 = matrix(100:111, nrow = 4 ))
