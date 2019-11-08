
# 1. Write R code that replicates the functionality of the head function we used in Unix. 
# Your code should define a variable with the file to return lines from and a variable representing 
# the number of lines to be returned from the top of the indicated file. The selected file content should 
# be printed to the terminal in R.

head <- function() {
  input <- readline("what is the name of your (csv) file?  ")
  file <- read.csv(input)
  n <- readline("what is the number of lines to be returned from the top?   ")
  file[1:n,]
}  

# 2. Load the data contained in the provided ‘iris.csv’ file and write R code to do the following things
# • print the last 2 rows in the last 2 columns to the R terminal
# • get the number of observations for each species included in the data set
# • get rows with Sepal.Width > 3.5
# • write the data for the species setosa to a comma-delimited file names ‘setosa.csv’
# • calculate the mean, minimum, and maximum of Petal.Length for observations from virginica

iris <- read.csv("iris.csv")
iris[149:150,4:5]
table(iris$Species)
iris[iris$Sepal.Length > 3.5,]
write.csv(iris[iris$Species == "setosa",] , "setosa.csv")
c( mean(iris[iris$Species=="virginica",]$Petal.Length), min(iris[iris$Species=="virginica",]$Petal.Length), max(iris[iris$Species=="virginica",]$Petal.Length))

