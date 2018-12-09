mtcars
#cluster into 3 groups
kml= kmeans (mtcars[,c('mpg','wt')], centers = 3)
kml$centers
