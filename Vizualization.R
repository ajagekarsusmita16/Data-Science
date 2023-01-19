                 #######16/1/2023#######

age=c(21,30,40,22,45,50,51,23,25,35)
plot(age)
salary=c(21000,30000,40000,22000,45000,50000,51000,23000,25000,35000)
plot(salary)
plot(age,salary)
plot(salary,age)
airquality=datasets::airquality
View(airquality)
head(airquality,10)
tail(airquality,10)
names(airquality)
airquality[,c(1,6)]
airquality[c(1,6),]
df=airquality[,-6]
df
summary(airquality$Ozone)
summary(airquality[,1])
summary(airquality$Wind)
summary(airquality$Ozoneairquality$Temp)
plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind,type = "p")
plot(airquality)
                 ####Scatter Diagram######
############################################################################

plot(airquality$Wind,type = "p")
plot(airquality$Wind,type = "l")
plot(airquality$Wind,type = "b")

plot(airquality$Wind,
     xlab = "Ozone Concentration",
     ylab = "No.of Instances",
     main="Ozon Levels in NY city",
     col="red",
     type ="l")
plot(airquality,col="Pink")
plot(airquality$Ozone,airquality$Solar.R)
plot(airquality$Solar.R,airquality$Ozone)


                          #####BAR_PLOT####
##############################################################################
barplot(airquality$Ozone,
        main = "Ozone Concentration in air",
        ylab="Ozone Levels",
        col="pink",
        horiz=T,
        axes=F)

                          ########HISTOGRAM########
##############################################################################
hist(airquality$Temp)
hist(airquality$Temp,
     main="Temrature",
     xlab="Solar",
     ylab="value",
     col="red",
     border="black")

               
                        #########BOX PLOT #############
###############################################################################
### Single Box plot
 boxplot(airquality$Wind,
         main="Boxplot",
         col="Pink",
         border="Black",
         horizontal = T)
boxplot(airquality$Wind,
        main="Boxplot",
        col="Pink",
        border="Black",
        horizontal = F)
boxplot.stats(airquality$Wind)$out

airquality$Ozone

######Multiple Box-Plot######
boxplot(airquality[,1:4],
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
plot(airquality$Ozone)
plot(airquality$Ozone,airquality$Wind)
plot(airquality$Ozone,type = "l")
plot(airquality$Solar.R,type = "l")
plot(airquality$Temp,type = "l")
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col='Pink',horiz = F)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main='Multiple Box plots')


         ######## Considering The NA values######
airquality
max(airquality$Wind)
min(airquality$Temp)
mean(airquality$Solar.R,na.rm = T)
median(airquality$Ozone)
median(airquality$Ozone,na.rm=T)
max(airquality$Ozone,na.rm=T)
min(airquality$Ozone,na.rm=T)

###########################################################################
var(airquality$Wind)
sd(airquality$Ozone,na.rm=T)
skewness(airquality$Ozone,na.rm=T)
kurtosis(airquality$Ozone,na.rm=T)

###########################################################################
View(flights)
