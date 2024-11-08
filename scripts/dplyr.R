# working with built-in data 
data()
ChickWeight
CO2
BOD

# working package data 
# 1. install package 
install.packages("gapminder")
install.packages("tidyverse")


# 2. load the package 
library(gapminder)
library(tidyverse)


# view the data 
gapminder

# Exploring data 
# 1. examine first few rows
head(gapminder)
head(gapminder, 10)
head(gapminder, n = 10)

# 2. examine last few rows 
tail(gapminder)
tail(gapminder, 10)
tail(gapminder, n = 10)

# 3. sampling 
sample(gapminder)
sample_n(gapminder, 20)
sample_frac(gapminder, .3)

# 4. check dimensions
dim(gapminder)
ncol(gapminder)
nrow(gapminder)

# 5. check columns names 
names(gapminder)

# 6. check data structure 
str(gapminder)
glimpse(gapminder)

# 7. summarize the data 
summary(gapminder)

# Common structure (for all dplyr functions)
# function_name(data, <do something>)

# 1. select (using colnames and col number) - subset of columns/column selection 
# select single column by column name 
select(gapminder, continent)

# select multiple columns by column name
select(gapminder, country, continent, year, pop)

# select single column by column number
select(gapminder, 5)

# select multiple columns by column number 
select(gapminder, 1, 3, 5)

# select multiple columns by collection of column number
select(gapminder, c(1, 4, 5))

# select multiple columns using a range 
select(gapminder, 1:4)

# select single column using contains() function 
select(gapminder, contains("c"))

# select multiple column using contains() function
select(gapminder, contains("c"), contains("g"))

# select column using starts_with() function
select(gapminder, starts_with("c"))

# select column using ends_with() function 
select(gapminder, ends_with("t"))

# remove single column by colname 
select(gapminder, -pop)

# remove multiple column by colname 
select(gapminder, -pop, -country)

# remove multiple column by collection of colnumber 
select(gapminder, -c(1, 3, 5))


# 2. filter - subset of rows/filter the data 
# equality (==)
filter(gapminder, country == "Bangladesh")

# inequality (!=)
filter(gapminder, country != "India")

# greater (>)
filter(gapminder, gdpPercap > 800)

# greater or equal (>=)
filter(gapminder, gdpPercap >= 800)

# less (<)
filter(gapminder, gdpPercap < 400)

# less or equal (<=)
filter(gapminder, gdpPercap <= 400)

# Logical AND (&) ~ both conditions have to be true 
filter(gapminder, country == "Bangladesh" & gdpPercap > 800)

# Logical OR (|) - one condition has to be true 
filter(gapminder, country == "Bangladesh" | gdpPercap < 400)

# %in% operator 
filter(gapminder, country %in% c("India", "Pakistan", "Bangladesh"))

# 3. mutate - to create new variables/columns 
# create new variables 
mutate(gapminder, gdp = gdpPercap * pop)
mutate(gapminder, gdp = gdpPercap * pop / 10^6)

# 4. rename - to rename our variables 
rename(gapminder, population = pop)

# 5. |> (pipe operator) - (CLT + SHIFT + M)

# conventional way 
subset_data <- select(gapminder, country, lifeExp, pop, gdpPercap)
filter(subset_data, country == "India")

# using pipe operator ( |> )
gapminder |> 
  select(country, lifeExp, pop, gdpPercap) |> 
  filter(country == "India")

# 6. grouping and summarizing data 
gapminder |> 
  group_by(continent) |> 
  summarise(mean_lifeExp = mean(lifeExp),
            median_lifeExp = median(lifeExp))

# 7. sorting data 
gapminder |> 
  group_by(continent) |> 
  summarise(mean_lifeExp = mean(lifeExp)) |> 
  arrange(desc(mean_lifeExp))

# five number summary 
summary(gapminder$lifeExp)


# summary functions 
mean()
median()
min()
max()
sd()
var()