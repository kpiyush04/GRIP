#Reading the csv data
data <- read.csv("https://raw.githubusercontent.com/AdiPersonalWorks/Random/master/student_scores%20-%20student_scores.csv")

# viewing the first 6 entries of the data
head(data)

#summary of the data 
summary(data)

#ploting both variables i.e. Score and Hours
plot(x = data$Hours, y = data$Scores, 
     xlab = "Hours", ylab = "Socres", 
     main = "Score V/s Hours")


#Linear Regression passed the formula and it passed 
data.regression <- lm(Scores ~ Hours, data=data)
abline(data.regression, col="blue")

summary(data.regression)
