?plot

require("datasets")

?chickwts

chickwts

data(chickwts)

plot(chickwts$feed, col = rainbow(5))

feeds  <- table(chickwts$feed)

feeds

View(feeds)

barplot(feeds, col = heat.colors(6))

?table

?barplot

barplot(feeds[order(feeds,decreasing=TRUE)])

#customize chart
par(oma = c(1,1,1,1)) #sets outside margin b,l,t,r

par(mar = c(4,5,2,1)) # sets plot margins

barplot(feeds[order(feeds)], horiz = TRUE, las = 1, #las gives orientation of axis labels
        col = c("beige","blanchedalmond","bisque2", "bisque3","bisque4"),
        border = NA, #no borders on bars
      main = "Frquencies of Different feeds\nin chickwts Dataset",
      xlab = "Number of Chicks"
        )

?par

detach("package:datasets",unload=TRUE)

rm(list = ls())

require("datasets")
data(chickwts)
feeds  <- table(chickwts$feed)
feeds

pie(feeds)

?pie

pie(feeds[order(feeds,decreasing=TRUE)], init.angle=90, clockwise=TRUE, col = rainbow(6), main = "Pie chart of feeds of chickwts")

pie.a  <-  c(22,14,18,20,14,12)
pie.b  <-  c(20,18,16,18,16,12)
pie.c  <-  c(12,14,20,18,14,22)

oldpar  <-  par()
par(mfrow = c(1,3), # number of row/col
    cex.main = 3) # main title 3x bigger

require(RColorBrewer)
colors  <- brewer.pal(6,"Spectral")

pie(pie.a,main="Pie A", col = colors)
pie(pie.b,main="Pie B", col = colors)
pie(pie.c,main="Pie C", col = colors)

barplot(pie.a,main="Pie A", col = colors)
barplot(pie.b,main="Pie B", col = colors)
barplot(pie.c,main="Pie C", col = colors)

par(oldpar)

rm(list=ls())

?lynx
data(lynx)
hist(lynx)
str(lynx)

View(lynx)

ls()

h  <-  hist(lynx, #save histogram object
            breaks = 11, #suggests
# breaks = seq(0,7000,by=100)            ,
#breaks = c(0,100,300,500,3000,3500,700)
            freq = FALSE,
            col = "thistle1",
            main = "Histogram of annual Canadian Lynx Trappings\n1821-1934",
            xlab = "Number of lynx trapped")

curve(dnorm(x,mean = mean(lynx),sd = sd(lynx)), col = "thistle4",
      lwd = 2,
      add = TRUE)

?curve

rm (list = ls())

#boxplot to see outliers

?USJudgeRatings

str(USJudgeRatings)

USJudgeRatings

data(USJudgeRatings)

boxplot(USJudgeRatings$RTEN)
?boxplot

boxplot(USJudgeRatings$RTEN,
        horizontal = TRUE,
        las = 1, #make all lables horizontal
        notch = TRUE, #notches for CI for mean
        ylim = c(0,10), #range for y axis
        col = "#9FB6CD",
        boxwex = 0.5,#width of box as proportion of original,
        whisklty = 1, #whisker line type, 1 is solid,
        staplelty = 0, #stabple line at end 0-none
        outpch = 16, #symbols for outliers,  16 = filled circle,
        outcol = "slategray3",
        xlab = "Lawyes' ratings")

boxplot(USJudgeRatings,
        horizontal = TRUE,
        las = 1, #make all lables horizontal
#        notch = TRUE, #notches for CI for mean
        ylim = c(0,10), #range for y axis
        col = "#9FB6CD",
        boxwex = 0.5,#width of box as proportion of original,
        whisklty = 1, #whisker line type, 1 is solid,
        staplelty = 0, #stabple line at end 0-none
        outpch = 16, #symbols for outliers,  16 = filled circle,
        outcol = "red",
        xlab = "Lawyes' ratings")

?USJudgeRatings

#overlaying plots

?swiss
swiss
str(swiss)
data(swiss)

fertility  <- swiss$Fertility

#histogram

h  <-  hist(fertility,
            prob = TRUE,#flip side of freq
             ylim = c(0,0.04),
             xlim = c(30,100),
             breaks = 11,
             col = "#E5E5E5",
             border = 0,
            main = "Fertility for 47 French-Speaking\nSwiss Provinces, c.1888"
            )

curve(dnorm(x,mean=mean(fertility),sd=sd(fertility)),
      col = "red",
      lwd = 3,
      add = TRUE)

#kernel density lines if prob = TRUE
lines(density(fertility),col = "blue")
lines(density(fertility,adjust=3), col="darkgreen")

#rug, lineplot under histogram
rug(fertility, col = "red")

#challenge
data(iris)
str(iris)

plengths  <- iris$Petal.Length

h  <- hist(plengths,
           prob = TRUE,
           breaks=12,
           ylim = c(0.0,0.4),
           col = "lightblue",
           main = "Petal Lengths"
           )

curve(dnorm(x,mean=mean(plengths),sd=sd(plengths)),
      col = "red",
      lwd = 3,
      add = TRUE)

#kernel density
lines(density(plengths), col ="blue")
lines(density(plengths,adjust=3),col="green")
rug(plengths,col="red",lwd=2)

