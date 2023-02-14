#Ia = 3000/5000
#Ib = 1500/50000
#Ic = 700/50000
#CI(a,b,c) = 400/ 800
#Lift (Ia,Ib,Ic) = CI(a,b,c)/(Ia+Ib+Ic) 


library(arules)
library(arulesViz)

data("Groceries")
summary(Groceries)

inspect(head(Groceries, 5))

itemFrequencyPlot(x= Groceries , topN = 15)

#### Important information is that there are 62 rules
Rules = apriori(Groceries , parameter = list(support = 0.01 , confidence = 0.4))

##
inspect(head(sort(Rules , by = "lift") , 10))
inspect(head(sort(Rules , by = "lift") , 62))

plot(Rules , method = "two-key plot")

plot(Rules , method = "grouped")

plot(Rules , method = "graph")

subrules = head()


