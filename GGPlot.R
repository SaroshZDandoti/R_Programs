#-----------GGPLOT
movies<- read.csv(file.choose())

head(movies)

colnames(movies) <- c("Film", "Genre", "CriticRating", "AudienceRating", "BudgetMillions", "Year")

head(movies)
str(movies)

summary(movies)

factor(movies$Year)
movies$Year <- factor(movies$Year)
summary(movies)


#--------- Aesthetic

library(ggplot2)

ggplot(data = movies, aes(x = CriticRating, y = AudienceRating) ) +
  geom_point()

#Color
ggplot(data = movies, aes(x = CriticRating, y = AudienceRating, color = Genre, size = Genre )) +
  geom_point()

#Adding Stuff Better
ggplot(data = movies, aes(x = CriticRating, y = AudienceRating, color = Genre, size = BudgetMillions )) +
  geom_point()


#----------Ploting with Layers

q <- ggplot(data = movies, aes(x = CriticRating, y = AudienceRating, color = Genre, size = BudgetMillions ))

q + geom_point(aes(color = BudgetMillions))

q + geom_point(aes(x = BudgetMillions))



# ------------- Mapping vs Setting

r <-  ggplot(data = movies , aes(x = CriticRating, y = AudienceRating,color = BudgetMillions ))

#Mapping
r + geom_point(aes(size = BudgetMillions))

#Setting
r + geom_point(size = 10)
 


# ------------ Histogram and Density Charts 

s <-  ggplot(data = movies , aes(x = BudgetMillions))

s  + geom_histogram(binwidth = 10)

#-------Density

s + geom_density(aes(fill = Genre), position = "stack") 













