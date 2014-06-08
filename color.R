#color

x  <- c(12,4,21,17,13,9)

barplot(x)

?colors

#color info
browseURL("http://research.stowers-institute.org/efg/R/Color/chart/")

colors()

barplot(x,col = "slategray3") #color by name
barplot(x,col = colors()[102]) #vector access

?rgb

?col2rgb

col2rgb("navyblue")

barplot(x,col = rgb(.54,.0,.0))#by percentage

barplot(x,col = rgb(159,182,204,max=255)) #we need 255

barplot(x,col = "#FFEBCD") #hex color blanchedalmond
barplot(x, col = c("red","blue"))
barplot(x, col = c("red","blue","green", "yellow"))

#palettes
help(package=colorspace)
?palette

palette()

barplot(x,col = 1:6)
barplot(x, col = rainbow(6))
barplot(x, col = heat.colors(6))
barplot(x, col = topo.colors(6))
barplot(x, col = cm.colors(6))
barplot(x, col = terrain.colors(6))

palette("default")

rm (list = ls())

browseURL("http://colorbrewer2.org")

install.packages("RColorBrewer")

help (package="RColorBrewer")

require(RColorBrewer)

display.brewer.all()

display.brewer.pal(8,"Accent")
display.brewer.pal(4,"Spectral")

blues  <-  brewer.pal(6,"Blues")

barplot(x, col = blues)

barplot(x, col = brewer.pal(6,"Greens"))
barplot(x, col = brewer.pal(6,"YlOrRd"))
barplot(x, col = brewer.pal(6,"RdGy"))
barplot(x, col = brewer.pal(6,"BrBG"))
barplot(x, col = brewer.pal(6,"Dark2"))
barplot(x, col = brewer.pal(6,"Paired"))
barplot(x, col = brewer.pal(6,"Pastel2"))
barplot(x, col = brewer.pal(6,"Set3"))

palette("default")

detach("package:RColorBrewer", unload = TRUE)
rm (list = ls())

require(RColorBrewer)
x  <-  c(5, 5, 5, 5, 5)

n  <- 5
x  <- c(rep(10,n))
x
barplot(x, col = rainbow(n))

barplot ( x, col = brewer.pal(4,"Spectral"))

x2  <- seq(8)
barplot(x2, col = brewer.pal(8,"PuRd"))


n  <- 7
x  <- c(rep(10,n))
barplot(x, col = brewer.pal(n,"Set1"))
display.brewer.pal(n,"Set1")

n  <- 9
x  <- c(rep(10,n))
barplot(x, col = brewer.pal(n,"PRGn"))

palette("default")

detach("package:RColorBrewer", unload=TRUE)

rm(list=ls())
