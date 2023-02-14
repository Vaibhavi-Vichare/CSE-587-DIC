data<- read.csv("/Users/vaibhavivichare/Documents/Second Sem/DIC/RStudio_Projects/Startups.csv")

data$'R.D.Spend'[c(3, 21, 46)] = NA
data$Administration[c(27)] = NA
data$Marketing.Spend[c(31)] =NA

write.csv(data, "Startup_Modified.csv", row.names= FALSE)

summary(data)

#All rows 2nd column
data_column_subset1 = data [ , 2]

#All rows and combine column 1 & 5 
#c returns a vector with a given values 
#Vector :: It is same as the arrays in C language 
# which are used to hold multiple data values of the same type.
#Indexing starts from 1.
data_column_subset2 = data [ , c(1,5)]

#Instead of writing column numbers you can also put column names.
data_column_subset3 = data [ , 'Administration']
data_column_subset4 = data [ , c('R.D.Spend', 'Profit')]

#One row & all columns
data_row_subset = data [5 , ]

#1 to 7, 22 to 29 , 33 & 45 to 50 rows with all columns stored in data_row_subset1
data_row_subset1 = data [c(1:7 , 22:29 ,33 , 45:50), ]

#It combines specific rows and specific columns
data_combined_subset1 = data[c(1:7 , 22:29 ,33 , 45:50) , c('R.D.Spend', 'Profit')]

# seq() :: IT is used to create a sequence of continuous elements in a Vector. 
# It takes the length and difference between values as optional argument.
# Syntax:
#   seq(from, to, by, length.out)
# 
# Parameters:
#   from: Starting element of the sequence
# to: Ending element of the sequence
# by: Difference between the elements
# length.out: Maximum length of the vector
data_combined_subset2 = data [ seq (1, 50 , by = 3) , c('R.D.Spend', 'Profit')]

#Here we displayed thr profit which is greater than 140000 for R.D.Spend and Profit columns
data_combined_subset3 = data[data$Profit >= 14000, c('R.D.Spend', 'Profit')]

data_combined_subset4 = data [(data$Administration <= 130000) & (data$State == 'Florida')]









