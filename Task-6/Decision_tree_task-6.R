#This Task was done by Piyush Kumar

#Loading libraries
library(datasets)
library(party)
library(rpart)
library(rpart.plot)

#loading the iris dataset
data("iris")

#overall descriptive of the dataset 
summary(iris)

#data splitting
set.seed(400)

train_ind <- sample(2,nrow(iris), replace = TRUE, prob = c(0.8, 0.2))

train = iris[train_ind == 1, ]
test = iris[train_ind == 2, ]

tree_1 <- rpart(Species ~. , train)
rpart.plot(tree_1)

#### here is the decision using one variable

#decision tree Species by Sepal.Length
tree_sepal_length <- rpart(Species~Sepal.Length, data=iris)
rpart.plot(tree_sepal_length)

#decision tree Species by Sepal.Width
tree_sepal_width <- rpart(Species~Sepal.Width, data=iris)
rpart.plot(tree_sepal_width)

#decision tree Species by Petal.Length
tree_petal_length <- rpart(Species~Petal.Length, data=iris)
rpart.plot(tree_petal_length)

#decision tree Species by Petal.Width
tree_petal_width <- rpart(Species~Petal.Width, data=iris)
rpart.plot(tree_petal_width)

### here is the decision using all variable
tree <- rpart(Species~Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, data=iris)
rpart.plot(tree)
