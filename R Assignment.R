#########     IRIS DATA SET   ##############

iris<- datasets::iris

####Top 10 rows and last 10 rows
head(iris,8)
tail(iris,8)
names(iris) #names of all columns

# To see entire dataset click on iris data set name on top right window 
######Columns
iris[,c(1,2)]# all rows and first two columns

df<-iris[,-6] # excludes column no.6
df

summary(iris[,1]) # summary statistics for column 1

iris$Sepal.Length # display column values

summary(iris$Sepal.Width) # summary of Sepal.width column

###########Summary of the data#########

summary(iris) # summary for all columns

##################### Visualization
plot(iris$Sepal.Width)
plot(iris$Sepal.Length,iris$Sepal.Width,type="p") 
plot(iris) #scatterplot
help(plot)

# points and lines 
plot(iris$Petal.Length, type= "p") # p: points, l: lines,b: both
plot(iris$Petal.Length, type= "l")
plot(iris$Petal.Length, type= "b")

plot(iris$Petal.Length, 
     xlab = 'Petal.length', 
     ylab = 'No of Instances', 
     main = 'Iris',
     col = 'blue',
     type='l')

plot(iris,col='red') # plot of entire dataset - all columns

plot(iris$Petal.Length,iris$Petal.Width)# x axis - Petal Length, Y- Petal. Width
plot(iris$Sepal.Length,iris$Sepal.Width) # x - Sepal Length, y - Sepal Width

# Horizontal bar plot
barplot(iris$Petal.Length, 
        xlab = 'Petal.length', 
        ylab = 'No of Instances', 
        main = 'Iris',
        col = 'blue',
        type='l',
        horiz = T,
        axes=F)
help(barplot)

#Histogram

hist(airquality$Temp)

hist(airquality$Temp, 
     main = 'Solar Radiation values in air',
     xlab = 'Solar rad.', 
     col='blue',
     border='red')

help(hist)

#Single box plot
help(boxplot)

boxplot(airquality$Wind,
        main="Boxplot",
        col="green",
        border='red',
        horizontal=T)

boxplot.stats(airquality$Wind)$out #outlier values

airquality$Ozone


# Multiple box plots
boxplot(airquality[,1:4],
        main='Multiple Box Plots',
        horizontal=TRUE,
        col='pink')

#margin of the grid(mar)(bottom,left,top,right), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot (o,n,7,L,C,U)
help(par)
par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")
plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col='green',horiz = TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main='Multiple Box plots')

# Considering NA values
airquality
max(airquality$Wind)
min(airquality$Temp)
mean(airquality$Solar.R)
mean(airquality$Solar.R,na.rm=T)
median(airquality$Ozone)
median(airquality$Ozone,na.rm=T)

# Google following functions as variance in R, etc
#var
#skewness
#kurtosis
#Density plot


var(airquality$Wind)
sd(airquality$Ozone)#,na.rm = T) Standard Deviation # because of NA values in ozone col - No o/p
sd(airquality$Ozone, na.rm = T)

skewness(airquality$Ozone) #error
kurtosis(airquality$Ozone) #error

# Installing Packages

# when function is not available you have to install some packages/libraries.
# eg. mobile has some in built apps 
# - others download scanner, whatsapp, photo editor from play store
# which library to download for skewness
#google - skewness and kurtosis in r
# go to rbloggers.com
# library(moments)
# or go to rdocumentation.r
# type skewness - you will get the name of package as 'moments'
# go to rstudio
# click on packages in 3rd window - bottom right corner - Click on install
# type moments in packages, click checkbox - install dependencies - click install
# After installation, in search - search for installed 'moments', click that checkbox

# Or try: install.packages("moments")

skewness(airquality$Ozone,na.rm=T) 
kurtosis(airquality$Ozone,na.rm=T) 


# Density Plot
plot(density(airquality$Wind))
plot(density(airquality$Ozone,na.rm=T))


## In Class Exercise
e_quakes<-datasets::quakes






#var

var(e_quakes$mag)

#skewness

skewness(e_quakes$mag) 


skewness(e_quakes$mag)

mean(e_quakes$mag)

#kurtosis

kurtosis(e_quakes$mag)



# HOME WORK
# iris_data<-datasets::iris
# perform all steps on iris dataset that you have performed on airquality and quakes dataset


# to import xml files in R, first install XML package
# 
install.packages("XML")







Footer
© 2023 GitHub, Inc.
Footer navigation
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pricing
API
Training
Blog
About
