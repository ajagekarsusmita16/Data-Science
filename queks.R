View(quakes)
head(quakes,10)
tail(quakes,10)
names(quakes)
quakes[,c(1,4)]
quakes[c(1,4),]
df=quakes[,-6]
df
summary(quakes$long)
summary(quakes[,1])
summary(quakes$depth)
summary(quakes$long,quakes$depth)
plot(quakes$depth)
plot(quakes$long,quakes$depth,type = "p")
plot(quakes)


####Scatter Diagram######
############################################################################

plot(quakes$lat,type = "p")
plot(quakes$long,type = "l")
plot(quakes$depth,type = "b")

plot(quakes$long,
     xlab = "Quekes",
     ylab = "No.of Instances",
     main="Information of Quek",
     col="red",
     type ="l")
plot(quakes,col="Pink")
plot(quakes$long,quakes$stations)
plot(quakes$mag,quakes$stations)


#####BAR_PLOT####
##############################################################################
barplot(quakes$lat,
        main = "Informations of Quakes",
        ylab="long Levels",
        col="pink",
        horiz=T,
        axes=F)

########HISTOGRAM########
##############################################################################
hist(quakes$mag)
hist(quakes$mag,
     main="Temrature",
     xlab="Solar",
     ylab="value",
     col="red",
     border="black")


#########BOX PLOT #############
###############################################################################
### Single Box plot
boxplot(quakes$depth,
        main="Boxplot",
        col="Pink",
        border="Black",
        horizontal = T)
boxplot(quakes$depth,
        main="Boxplot",
        col="Pink",
        border="Black",
        horizontal = T)
boxplot.stats(quakes$depth)$out

quakes$long

######Multiple Box-Plot######
boxplot(quakes[,1:4],
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
plot(quakes$depth)
plot(quakes$depth,quakes$long)
plot(quakes$depth,type = "l")
plot(quakes$mag,type = "l")
plot(quakes$stations,type = "l")
barplot(quakes$depth, main = 'Information of Quakes',
        xlab = 'depth levels', col='Pink',horiz = F)
hist(quakes$depth)
boxplot(quakes$long)
boxplot(quakes[,0:4], main='Multiple Box plots')


######## Considering The NA values######
quakes
max(quakes$long)
min(quakes$lat)
mean(quakes$depth,na.rm = T)
median(quakes$depth)
median(quakes$depth,na.rm=T)
max(quakes$depth,na.rm=T)
min(quakes$depth,na.rm=T)

###########################################################################
var(quakes$long)
sd(quakes$depth,na.rm=T)
skewness(quakes$depth)
kurtosis(quakes$depth)

