install.packages("ggplot2")
install.packages("kernlab")
install.packages("lattice")
install.packages("caret")

library(kernlab)
library(ggplot2)
library(lattice)
library(caret)

data("spam")

data = spam [ , c("charExclamation", "remove", "hp", "charDollar" , "capitalAve", "type") ]

summary(data)

#Data splitting into training set and testing set
# K should be odd in KNN
set.seed(123)

traning = createDataPartition(data$type, p =0.75, list= FALSE)

train_set = data[traning, ]

test_set = data [-traning ,]

#Train the model
KNN = train (data = train_set , type~. , method = "knn" , preProcess = c ("center" , "scale") , tuneLength = 20 )

#predict and compare accuracy
confusionMatrix(predict(KNN , newdata = train_set) , train_set$type)

confusionMatrix(predict(KNN , newdata = test_set) , test_set$type)