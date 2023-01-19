View(iris)
head(iris,8)
tail(iris,8)
names(iris)
iris[,c(1,3)]
iris[c(1,3),]
df=iris[,-3]
df
summary(iris$Sepal.Width)
summary(iris[,1])
summary(iris$Sepal.Length)
summary(iris$Sepal.Length,iris$Sepal.Width)
plot(iris$Sepal.Width)
plot(iris$Sepal.Length,iris$Sepal.Width,type = "p")
plot(iris)


####Scatter Diagram######
############################################################################

plot(iris$Species,type = "p")
plot(iris$Sepal.Length,type = "l")
plot(iris$Sepal.Width,type = "b")

plot(iris$Sepal.Length,
     xlab = "Sepal.Length",
     ylab = "No.of Instances",
     main="Information Trees",
     col="red",
     type ="l")
plot(iris,col="Pink")
plot(iris$Sepal.Length,iris$Petal.Width)
plot(iris$Petal.Length,iris$Petal.Width)


#####BAR_PLOT####
##############################################################################
barplot(iris$Petal.Length,
        main = "Informations of iris",
        ylab="Sepal.Length Levels",
        col="pink",
        horiz=T,
        axes=F)

########HISTOGRAM########
##############################################################################
hist(iris$Petal.Length)
hist(iris$Petal.Length,
     main="Iris",
     xlab="Length",
     ylab="value",
     col="red",
     border="black")


#########BOX PLOT #############
###############################################################################
### Single Box plot
boxplot(iris$Sepal.Width,
        main="Boxplot",
        col="Pink",
        border="Black",
        horizontal = T)
boxplot(iris$Sepal.Width,
        main="Boxplot",
        col="Pink",
        border="Black",
        horizontal = T)
boxplot.stats(iris$Sepal.Width)$out

iris$Sepal.Length

######Multiple Box-Plot######
boxplot(iris[,1:4],
        main="Multiple Boxplot",
        horizontal = T,
        col="Yellow")


####### Margin of the grid(mar)(bottom,left,right,top)
### no of rows and coulumn (mfrow)
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot (o,n,7,L,C,U)

par(mfrow=c(3,3),mar=c(2,5,2,1),  las=1, bty="o")
plot(iris$Sepal.Width)
plot(iris$Sepal.Width,iris$Sepal.Length)
plot(iris$Sepal.Width,type = "l")
plot(iris$Petal.Length,type = "l")
plot(iris$Petal.Width,type = "l")
barplot(iris$Sepal.Width, main = 'Information of iris',
        xlab = 'Sepal.Width levels', col='Pink',horiz = F)
hist(iris$Sepal.Width)
boxplot(iris$Sepal.Length)
boxplot(iris[,0:4], main='Multiple Box plots')


######## Considering The NA values######
iris
max(iris$Sepal.Length)
min(iris$Sepal.Width)
mean(iris$Sepal.Width,na.rm = T)
median(iris$Sepal.Width)
median(iris$Sepal.Width,na.rm=T)
max(iris$Sepal.Width,na.rm=T)
min(iris$Sepal.Width,na.rm=T)

#######################################################################
var(iris$Sepal.Length)
sd(iris$Sepal.Width,na.rm=T)
skewness(iris$Sepal.Width)
kurtosis(iris$Sepal.Width)

