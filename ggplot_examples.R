# ggplot learning code
# Zhang
# Feb 22, 2015
# gyz151@gmail.com

install.packages("ggplot2", dependencies = TURE)
install.packages("plyr")
install.packages("ggthemes")
install.packages("reshape2")

library("ggplot2")
library("reshape2")
library("plyr")
library("ggthemes")

head(iris)

myiris <- iris

#data, aesthetics, geometry, stats, facets [e.g., multiple panels in same figure by species] (terminology used in the XXX library)

myplot <- ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width))
myplot + geom_point()

ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_point(size =3)

ggplot(data = iris, aes(Sepal.Length, Sepal.Width, color = Species)) +
  geom_point(size =3)

ggplot(data = iris, aes(Sepal.Length, Sepal.Width, color = Species)) +
  geom_point(aes(shape = Species), size =3)

#sample a 1000 times from rows 1 to dim(diamond), and store to d2
d2 <- diamonds[sample(1:dim(diamonds)[1], 1000), ]

myplot <- ggplot(data = d2, aes(x = carat, y = price))

ggplot(data = d2, aes(carat, price, color = color)) +
  geom_point(size =3)

ggplot(data = d2, aes(carat, price, color = color)) +
  geom_point(aes(shape = color), size =3)

library(MASS)
ggplot(birthwt, aes(factor(race),bwt)) + geom_boxplot()

# ?? myplot <- ggplot
# ?? summary(myplot)

ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) +
  geom_point(size = 3) +
  facet_grid(Species ~ .)







