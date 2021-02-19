
# 1 Choose file MAnually
stats <- read.csv(file.choose())
stats

# 2 Set Working Directory and Read Data
setwd()

#-----------------
nrow(stats)
ncol(stats)

head(stats , n = 6)
tail(stats)
str(stats)
summary(stats)

#--------------

stats
head(stats)
stats[3,3]
stats$Internet.users

levels(stats$Income.Group)

#-------------- Basic operations on DF

stats[1:10,]

stats[1,]
is.data.frame(stats[1,])
 

#--------------Filtering DF

head(stats)
filter <- stats$Internet.users<2
stats[filter,]

stats[stats$Birth.rate >40,]
check<- stats[stats$Country.Name == "Malta",]

summary(check) 

#----------------- Q plot

#intall.package("ggplot1")

library(ggplot2)

?qplot
qplot(data=stats,x = Internet.users)
qplot(data=stats,x = Income.Group, y = Birth.rate)
qplot(data=stats,x = Income.Group, y = Birth.rate, size = I(3))

qplot(data=stats,x = Income.Group, y = Birth.rate, size = I(3), colour = I("blue"))

qplot(data=stats,x = Income.Group, y = Birth.rate, geom = "boxplot")

#------------
qplot(data=stats,x = Internet.users, y = Birth.rate, size = I(4), color = I("red"))


qplot(data=stats,x = Internet.users, y = Birth.rate, size = I(4), color = Income.Group)


#----------- Creating DFs

mydf <- data.frame(Countries_2012_Dataset, Codes_2012_Dataset , Regions_2012_Dataset)
head(mydf)

colnames(mydf) <- c("Country" , "Code" , "Region")


#---------- Merging Dfs

head(stats)
head(mydf)

merged <- merge(stats , mydf , by.x = "Country.Code", by.y = "Code")
 
merged$Country <- NULL

str(merged)



qplot(data = merged, x = Internet.users, y = Birth.rate , size = I(4), color = Region) 

# Shapes 

qplot(data = merged, x = Internet.users, y = Birth.rate,
      size = I(4), color = Region, shape = I(17) ) 


























