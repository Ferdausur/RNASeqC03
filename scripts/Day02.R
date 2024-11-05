# Defining  Variables 

# 1. Creating variables using (=) operator 
age = 30 

# 2. Creating variables using leftward (<-) operator 
age <- 30 


# Variable naming convention (always use meaning variables name)
a <- 30 

my_age <- 30 # community standard 

# Reserved keywords in R 
TRUE <- NONE 
?Reserved 


# Entering input (variable assignment)
num <- 10 

# Evaluation (Printing variables)

# 1. Using print() function 
print(num)

# 2. Using cat() function 
cat(num)

# 3. By calling variable itself 
num


# Data Types 

# 1. Numeric (discrete, continuous)
age <- 10 

# check data type 
typeof(age) # object 
class(age) # class 

height <- 1.56 
typeof(height)
class(height)

# 2. Text / Character / String 
comment <- "You are looking good."  
typeof(comment)
class(comment)

# 3. Logical data (binary decision = 1(yes)/0(no))
is_weekday <- TRUE 
typeof(is_weekday)
class(is_weekday)

# Operators 
# 2 (input) + (operator) 5 (input) = (equal to) 7 (output)
# 2 (input/operand) + (operator) 5 (input/operand) = 7 (output)

# 1. Arithmetic Operators
num1 <- 10 
num2 <- 2 

num1 + num2 # addition
num1 - num2 # subtraction
num1 * num2 # multiplication 
num1 / num2 # division 
num1 ^ num2 # exponent 
num1 %% num2 # modulus (remainder from division)

# 10 (even) ~ if 10/2 == 0; even 
# 11 (odd) ~ if 11/2 == 1; odd 

# 2. Logical operators (TRUE/FALSE)

# Logical AND (&&)
2 > 1 && 4 < 2 
2 == 2 && 2 > 1

# Logical OR (|)
2 > 1 | 4 < 2 

# Logical Not 
# Negation 
# 1. Today is Friday (Positive)
# 2. Today is not Friday (Negative)
2 == 2
!2==2


# 3. Relational operators 
num1 <- 10 
num2 <- 2 

num1 > num2 
num1 < num2
num1 == num2 
num1 >= num2 # greater (True) OR equal (FALSE)
num1 <= num2 # less (FALSE) OR equal (FALSE)
num1 != num2 # not equal 

# Data structures in R 

# Vector (to store collection of items, can contain any type of data)

# 1. Creating a vector using c() function 
ages <- c(22, 11, 19, 14, 15)
ages

# 2. Creating a vector using : (colon) operator 
choromosomes <- 1:22
choromosomes

# 3. Creating a vector using seq(start, stop, step) function
seq_vector <- seq(1, 22, 2)
seq_vector <- seq(1, 22, by = 2)
seq_vector

# Numeric Vectors 
v1 <- c(11, 12, 34, 55)

# Logical Vector 
v2 <- c(TRUE, FALSE, TRUE, T, F, T)

# Character Vector 
colors <- c("black", "red", "yellow")

# Mixed Vectors 
mixed_vector <- c(1, T, "black")
mixed_vector


# Sub-setting / indexing 
ages <- c(22, 11, 19, 14, 15)

ages[3]
ages[c(1, 4)]
ages[1:4]

# Matrix (to store 2D data)
# Creating a matrix using matrix() function 
matrix(1:9)

# fix row 
matrix(1:9, nrow = 3)

# fix column 
matrix(1:9, nrow = 3, ncol = 3)

# byrow 
matrix(1:9, nrow = 3, ncol = 3, byrow = T)

# dimension names 


mat <- matrix(1:9, nrow = 3, ncol = 3, 
              dimnames = list(
                c("X", "Y", "Z"), 
                c("A", "B", "C")
              ))

# colnames 
colnames(mat)

# rownames 
rownames(mat)

# check dimension
dim(mat)

# matrix properties 
nrow()
ncol()
dimnames()
colnames()
rownames()
dim()

# sub-set a matrix 
mat <- matrix(1:9, nrow = 3, ncol = 3, 
              dimnames = list(
                c("X", "Y", "Z"), 
                c("A", "B", "C")
              ))
# row sub-set 
mat[1,]

# col sub-set 
mat[, 1]

# List (combined multiple data in one place)
list_obj <- list(
  row =  c("X", "Y", "Z"), 
  col = c("A", "B", "C"), 
  is_weekday <- TRUE 
)
list_obj

# Factors (categorical)
smokers <- c("yes", "no", "no", "yes", "no")
length(smokers)
summary(smokers)
class(smokers)

# convert into factor 
smokers_group <- factor(c("yes", "no", "no", "yes", "no"))
length(smokers_group)
summary(smokers_group)
class(smokers_group)


# built-in data 
data()
BOD

# sample size = 6 
age <- c(21, 22, 14, 15, 16, 23)
smoking_status = c("yes", "no", "yes", "no", "no", "yes")
marital_status = c("married", "unmarried", "nothing", "nothing", "married", "unmarried")

# data frame 
df <- data.frame(
  age = c(21, 22, 14, 15, 16, 23), 
  smoking_status = c("yes", "no", "yes", "no", "no", "yes"), 
  marital_status = c("married", "unmarried", "nothing", "nothing", "married", "unmarried")
)

class(df)

# exploring data 

# number of rows 
nrow(df)

# number of columns 
ncol(df)

# dimension of the data 
dim(df)

# check data structure 
str(df)

# access columns (subset column)
df$age
df$smoking_status

# fix data types using as family 
df$smoking_status <- as.factor(df$smoking_status)
df$marital_status <- as.factor(df$marital_status)

str(df)

# summary 
summary(df)

num <- -10 
if (num > 0) {
  # instructions 
  print("positive")
} else { 
  print("negative")
}

ages <- c(11, 12, 13, 15, 25, 30, 40, 45, 60)
ifelse(ages > 18, "adult", "child")


# 1. Variables 
# 2. Data types (numeric, character, logical)
# 3. Operators (arithmetic, relational, logical)
# 4. Data structures (vector, factor, matrix, list, data frame)
# 5. Decision making (ifelse function)
# 6. Install packages (install.packages("pack_name")) / Load packages (library(pack_name))
