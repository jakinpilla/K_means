data("iris")

kc = kmeans(iris[1:4], 3)
kc

kc$cluster
sp.name = c("setosa", "virginica", "versicolor")
sp.name[kc$cluster]

library(ggplot2)
ggplot(iris) + 
  geom_point(aes(x=Sepal.Length, y=Sepal.Width,
                 color = sp.name[kc$cluster]))
