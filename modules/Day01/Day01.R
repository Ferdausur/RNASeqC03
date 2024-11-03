# Declare variables
message <- "Hello World!"
message
print(message)

# Functions for var printing
print(message)
cat(message)

# Age of participants
a = 30 # Bad var naming convention
age = 30 # Good example

# Good naming convention
my_age <- 30
age_of_community <- 40

# Getting help from RStudio
help(mean)
?median
?Reserved

# Don't use Reserved keywords as var names
TRUE <- "today"

# This is first comment
# This is second  comment


# Data Types
# 1. Numeric
a <- 10
class(a)
typeof(a)

b <- 10.5
class(b)
typeof(b)

c <- 10L
class(c)
typeof(c)

# 2. Character
name <- "Rahim"
name <- 'Rahim'
class(name)

# Check built-in datasets in R
data()
airquality

# Check data structure
str(airquality)
str(iris)

# 3. Logical data types
is_weekend <- TRUE
is_weekend <- T
class(is_weekend)

is_leap_year <- FALSE
is_leap_year <- F
class(is_leap_year)

# Complex numbers
# Real + img
complex_num <- 2 + 2i
class(complex_num)

# Arithmetic Operators
2 + 2
3 - 1
3 * 2
4 / 2
6 %% 2 # modulus operator
11 %% 2


# Relational Operators
a <- 10
b <- 2

a == b
a != b
a > b
a < b
a <= b
a >= b

# Logical Operators (AND , OR , NOT)
2 == 2 && 3 > 2
2 == 2 | 2 > 3
!2 == 2




