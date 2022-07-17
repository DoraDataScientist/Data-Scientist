
a = 4

a


a <- 5

a

data = iris

library(dplyr)




age <- c(23,24,25)

age

class(age)


age[c(2,3)]

#Index is based on Position
# Names
# Logical Operator


names(age) = c("One","Two","Three")
age

age[c("One", "Three")]

index = c(TRUE,FALSE,TRUE)

age[index]


age <- c(23,24,25)

age
income <- c(2000,5000,8000)
location <- c("A","B","C")

testdata <- data.frame(age,income,location)

testdata
class(testdata)

str(testdata)

as.character()

testdata$location1 <- as.character(testdata$location)

str(testdata)

testdata[1,1]


#testdata[anything that happens in the rows, anythings that happens in the columns]


testdata






testdata
testdata[2 , "Income"]


age

age[4] = 27


age2 = c(age,30)

age2


x <- 1:10
y <- 10:1

model <- lm (y~x)
str(model)

model$model$y


new <- list (age = c(23,24,25),
             Retired = c(FALSE, TRUE),
             Income = c(2000,3000),
             n = list(l = c("A","B")))

class(new)

str(new)

new$n$l[2]

new$Retired

class(model)
mode(model)


