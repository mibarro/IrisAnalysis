#Assignment1
#Install packages
install.packages("tidyverse")
library(tidyverse)
renv::snapshot()

#Load data
data(iris)

#Save raw data
write.csv(iris,"Assignment1_MarianaBarroso/Data/iris.csv")

#Explore data
head(iris)
summary(iris)
str(iris)

#Data manipulation example
##All flowers with petal length greater than 2
library(dplyr)
iris_filtered <- filter(iris, Petal.Length > 2) 
iris_filtered

#Save result from data manipulation 
write.csv(iris_filtered,"Assignment1_MarianaBarroso/Results/iris_filtered.csv")

#Visualization plot (ggplot)
ggplot(iris_filtered,aes(x=Species,y=Sepal.Width,fill = Species))+
  geom_boxplot()+labs(title = "Sepal With by Species",x="Species",y="Sepal Width")

#Save visualization plot 
ggsave("Assignment1_MarianaBarroso/Figures/sepal_width_bloxplot.png")

