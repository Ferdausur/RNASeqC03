# Working with strings
# String using single quotes
'Hello'

# String using double quotes
"Hello"

# Find length of a string
message1 <- "CHIRAL Bangladesh"
nchar(message1)

# Join strings together
m1 <- "CHIRAL"
m2 <- "Bangladesh"
paste(m1, m2)

combined_str <- paste(m1, m2)
nchar(combined_str)

# Compare strings
message1 <- "Hello, World!"
message2 <- "Hi, Bangladesh!"
message3 <- "Hello, CHIRAL!"
message4 <- "Hello, CHIRAL!"

message1 == message2
message4 == message3

# Change case
message <- "R Programming"

# change string to uppercase
message_upper <- toupper(message)
message_upper

# change string to lowercase
message_lower <- tolower(message)
message_lower


# Data types
# 1. Numeric (2, 2.5)
# 2. Logical (TRUE/T, FALSE/F)
# 3. Character ("something", 'something')


# Numeric vector
numeric_vector <- c(1, 2, 3, 4, 5)
numeric_vector
typeof(numeric_vector)

# Character vector
character_vector <- c("apple", "banana", "orange")
character_vector
typeof(character_vector)

# Logical vector
logical_vector <- c(TRUE, FALSE, TRUE)
logical_vector
typeof(logical_vector)

# Numeric sequence vector
numeric_sequence <- 1:10 # start = 1, stop = 10, step = 1
numeric_sequence

# Numeric sequence vector using seq()
numeric_sequence <- seq(from = 1, to = 10, by = 3)
numeric_sequence


# Repeated values vector using rep()
repeated_values <- rep(0, times = 15)
repeated_values

# Index sequence vector using seq_len()
index_sequence <- seq_len(10)
index_sequence

# length of any sequence
length(index_sequence)

# Vector created using vectorized operation
numeric_vector <- c(1, 2, 3, 4, 5)
new_vector <- numeric_vector * 2
new_vector

# Character
x <- c(1.7, "a", T, 2+2i)
typeof(x)

# Numeric
y <- c(TRUE, 2)
typeof(y)

# Character
z <- c("a", TRUE)
typeof(z)


# Create a matrix using matrix function
mat1 <- matrix(1:9, nrow = 3, ncol = 3)
mat1

# Create a matrix using matrix function: only one dimension
mat2 <- matrix(1:9, nrow = 3)
mat2

# Create a matrix using matrix function: filling by row-wise
mat3 <- matrix(1:9, nrow = 3, byrow = TRUE)
mat3

# Create a matrix using matrix function: dimension names
mat4 <- matrix(1:9, nrow = 3, dimnames = list(c("X", "Y", "Z"),
                                              c("A","B","C")))
mat4


mat5 <- matrix(data = 1:9, nrow = 3, ncol = 3,
               dimnames = list(c("X", "Y", "Z"),
                               c("A","B","C")))
mat5

# dim
dim(mat5)

# row
nrow(mat5)

# col
ncol(mat5)

# dimnames
dimnames(mat5)

# colnames
colnames(mat5)

# rownames
rownames(mat5)


A <- matrix(c(11, 12, 13, 22, 21, 23, 31, 32, 33),
       nrow = 3,
       ncol = 3,
       byrow = T)

rownames(A) <- c("A", "B", "C")
colnames(A) <- c("X", "Y", "Z")


# Create a list
L = list(1, "a", TRUE, 1+3i)
L


# Create a list with different elements
my_list <- list(
  name = "John Doe",  # Character value
  age = 30,  # Numeric value
  is_student = TRUE,  # Logical value
  scores = c(90, 85, 92),  # Numeric vector
  matrix_data = matrix(1:6, nrow = 2),  # Matrix
  sub_list = list("a", "b", "c")  # Nested list
)
my_list


# Create a factor using factor() function
f <- factor(c("yes", "no", "yes", "no"))

# Check levels
levels(f)


# Create a data frame
df1 <- data.frame(
  name = c("John", "Alice", "Bob"),
  age = c(25, 30, 35),
  city = c("New York", "London", "Paris")
)

str(df1)


df2 <- data.frame(
  name = factor(c("John", "Alice", "Bob")),
  age = c(25, 30, 35),
  city = factor(c("New York", "London", "Paris"))
)

str(df2)


# Create a data frame
df3 <- data.frame(
  name = c("John", "Alice", "Bob"),
  age = c(25, 30, 35),
  city = c("New York", "London", "Paris"),
  stringsAsFactors = T
)

str(df3)




# Create a data frame
df4 <- data.frame(
  name = c("John", "Alice", "Bob"),
  age = c(25, 30, 35),
  gender = c("male", "male", "femlae"),
  city = c("New York", "London", "Paris"),
  stringsAsFactors = T
)

str(df4)
table(df4$gender)
summary(df4)

# convert data types
name = c("John", "Alice", "Bob")

# as family
as.factor(name)
as.numeric()
as.logical()
as.character()
as.double()
as.data.frame()
as.Date()

# subset vector
vector <- c(10, 20, 30, 40, 50)
vector[1]
vector[1:3]
vector[c(1, 3, 5)]
vector[vector > 30]

# matrix
matrix <- matrix(1:6, nrow = 2)
matrix
matrix[1, ]
matrix[1, 1:2]

matrix[, 1]



# if statement
if(condition) {
  # do something
}

x = -10
if(x > 0) {
  # do something - if block
  print("postive")
} else {
  # do something - else block
  print("negative")
}

bmi = 30
if (bmi == 18.5){
  print("normal")
} else if (bmi < 18.5){
  print("underweight")
} else if (bmi > 18.5 & bmi < 24.5) {
  print("healthy")
} else {
  print("obese")
}


ifelse(condition, "true", "false")

x <- 10
ifelse(x > 0, "postive", "negative")

age <- c(17, 15, 22, 23, 40, 34, 45, 54, 32)
ifelse(age < 18, "Under 18", "Adults")


# print 1 - 10
for (var in seq) {
  print(var)
}

for (i in 1:10) {
 print(i)
}

for (j in 10:1) {
  print(j)
}

for (i in 1:10) {
  if (i %% 2 == 0) {
    print("even")
  } else {
    print("odd")
  }
}

for (i in 1:10) {
  seq <- ifelse(i %% 2 == 0, "even", "odd")
  print(seq)
}


i <- 1
while (i <=5) {
  print(i)
  i = i + 2
}



for (i in 1:10) {
  if (i == 5) {
    break
  }
  print(i)
}


for (i in 1:10) {
  if (i == 5) {
    next
  }
  print(i)
}





# built-in functions
sum(20, 3)
mean(c(11, 12, 13))
median(c(23, 21, 2))

# user defined functions
add_num <- function(num1, num2) {
  # do something
  total <- num1 + num2
  return(total)
}

add_num(10, 12)


say_hello <- function(name) {
  text <- "Hello!"
  output <- paste(text, name)
  return(output)
}
say_hello("Rahim")











# Create a data frame
df4 <- data.frame(
  name = c("John", "Alice", "Bob"),
  age = c(18, 30, 35),
  gender = c("male", "male", "femlae"),
  city = c("New York", "London", "Paris"),
  stringsAsFactors = T
)

df4$age_cat <- ifelse(df4$age < 20, "under 20", "over 20")






