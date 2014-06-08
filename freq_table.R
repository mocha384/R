#calculating frequencies

groups  <- c(rep("blue",3990),
             rep("red",4140),
             rep("orange",1890),
             rep("green",3770),
             rep("purple",855)
             )
#create frequency table
groups.t1  <- table(groups)
groups.t1
?c
groups.t2  <- sort(groups.t1,decreasing=TRUE)

groups.t2

prop.table(groups.t2)

round(prop.table(groups.t2),2)

round(prop.table(groups.t2),2)*100

require("datasets")

?cars
cars

str(cars)

data(cars)

summary(cars$mpgCity)

summary(cars)
#Tukey's five number summary
#min, lower-hinge, median, upper-hinge, max
fivenum(cars$weight)
summary(cars$weight)
boxplot.stats(cars$weight)

help(package = "psych")

install.packages("psych")

require("psych")
describe(cars)

rm(list = ls())

#inference 
prop.test(98,162)

prop.test(98,162,alt="greater", conf.level = .90)

#single mean ht and ci

?quakes

quakes[1:5,]

mag  <- quakes$mag

mag[1:5]

#default t-test (compares mean to 0)
t.test(mag)

#one sided t-test w/mu
t.test(mag, alternative = "greater", mu=4.62)
mean(mag)
