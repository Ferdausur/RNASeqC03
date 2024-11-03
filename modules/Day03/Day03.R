# control flow
# 1. conditional logic
num <- 10

# if statement
if (condition) {
  # inside if block ~ do something
}

if (num < 0) {
  print("Neative Number")
}

# else statement
if (condition) {
  # if block ~ do something
} else {
  # else block ~ do something
}

num <- 10
if (num < 0) {
  print("Neative Number")
} else {
  print("Positive Number")
}

# ifelse()
x <- 10
ifelse(x < 0, "negative", "positive")

# application
ages <- c(22, 11, 12, 14, 15, 19, 18, 30, 20, 22)
ifelse(ages < 18, "child", "adult")

qol_score <- c(70, 60, 50, 55, 45, 67, 80, 90, 23, 45, 68, 91)
ifelse(qol_score < 50, "poor", "good")

# logical operators

# NOT
# Today is Friday (Positive Statement)
# Today is not Friday (Negative Statement) ~ Negation
2 == 2
!2 == 2

# AND
2 == 2 && 2 > 1
2 == 2 && 2 > 3
2 == 1 &&2 > 3

# OR
2 == 2 | 2 > 1
2 == 2 | 2 > 3
2 == 1 | 2 > 3

# if ... else if ... else
bmi <- 31
if (bmi < 18.5) {
  print("underweight")
} else if (bmi >= 18.5 && bmi < 25) {
  print("normal weight")
} else if (bmi >= 25 && bmi < 30) {
  print("over weight")
} else {
  print("obese")
}


# 2. loops
print("Bangladesh")
print("Bangladesh")
print("Bangladesh")
print("Bangladesh")
print("Bangladesh")

# for loop
for (var in seq) {
  # do something
}

# print Bangladesh five times
for (i in 1:5) {
  print("Bangladesh")
}

# print 1 to 5
for (i in 1:5) {
 print(i)
}

# print 5 to 1
for (i in 5:1) {
  print(i)
}

# next statement
for (i in 1:10) {
  if (i == 3) {
    next
  }
  print(i)
}

# break statement
for (i in 1:10) {
  if (i == 3) {
    break
  }
  print(i)
}

# while loop
while(condition) {
  # do something
}

# print 1 - 10
i = 1
while (i <= 10) {
  print(i)
  i = i + 1
}

# Functions
# 1. built-in functions
ages <- c(22, 11, 12, 14, 15, 19, 18, 30, 20, 22)

# min and max
min(ages)
max(ages)
range(ages)

# measure of center
mean(ages)
median(ages)
mode(ages)

# dispersion
sd(ages)
var(ages)
IQR(ages)

# quantile
quantile(ages, 0.25)
quantile(ages, 0.5)
quantile(ages, 0.75)

# maths
log(ages)
log10(ages)
sqrt(ages)

# 2. user defined functions / custom functions
function_name <- function(inputs) {
  # do something
}

# add two numbers
add <- function(num1, num2) {
  total <- num1 + num2
  return(total)
}

# add multiple numbers
add_mul <- function(...) {
  numbers <- c(...)
  total <- sum(numbers)
  return(total)
}

add <- function(...) {
  # Capture all arguments in a list
  args <- list(...)

  # Initialize total to zero
  total <- 0

  # Iterate over each argument and add to total
  for (num in args) {
    total <- total + num
  }

  # Return the total
  return(total)
}

# Example usage
add(1, 2, 3, 4, 5)
sum(1, 2, 3, 4, 5)


# runif()
?runif
runif(5)

# sample()
sample(1:10, 3)
sample(1:6, 1)

# Generate a random sample of 4 elements from a vector
vector <- c("A", "B", "C", "D", "E")
sample(vector, 4)

# rnorm()
rnorm(10, mean = 0, sd = 1)
data <- rnorm(10, mean = 0, sd = 1)
hist(data)

# Install package
install.packages("package_name")
# Load package in R
library(package_name)

# install gapminder
install.packages("gapminder")

library(tidyverse)
library(gapminder)

# exploring data

# 1. check dimension
dim(gapminder)

# 2. ncol
ncol(gapminder)

# 3. nrow
nrow(gapminder)

# 4. colnames
names(gapminder)

# 5. examine first few rows
head(gapminder)
head(gapminder, 20)
head(gapminder, n = 10)

# 6. examine last few rows
tail(gapminder)
tail(gapminder, 10)
tail(gapminder, n = 10)

# 7. check data structure
str(gapminder)
glimpse(gapminder)

# check availabe data
data()
airquality
head(airquality)

# 8. check missing values
is.na(airquality)
sum(is.na(airquality))

# check duplicates
duplicated(airquality)
sum(duplicated(airquality))

