#Activiting packages
library(data.table)
library(ggplot2)
library(cluster)

#Importing data set
data = fread("/Users/vaibhavivichare/Documents/Second Sem/DIC/RStudio_Projects/market.csv")
View(data)

#considering two variables
data = data[ , 4:5]

set.seed(7)

WCSS = vector()
for (i in 1:10) {WCSS[i] = sum(kmeans(x = data , centers = i)$withinss)}

plot(x = 1:10 , y= WCSS, type = "b")

#Applying KMeans using number of clusters = 5
set.seed(13)

customer_cluster = kmeans(x = data , centers = 5 , iter.max = 500 , nstart = 20)

clusplot(x = data , 
         clus = customer_cluster$cluster,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = TRUE,
         main = "Customer clusters")

customer_cluster
