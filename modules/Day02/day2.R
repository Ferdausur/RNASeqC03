# strings
str <- "Hello"
class(str)

str2 <- 'Hello'
class(str2)

str3 <- 'Ramim's

str4 <- "Ramim's"


# string operations
# 1. Find the length of a string
seq <- "ATGGGGCCTTT"
nchar(seq)

# 2. Join two strings
s1 <- "ACCT"
s2 <- "GCTA"
s <- paste(s1, s2)

# 3. Compare two strings
s1 == s2
s3 <- "ACCT"
s1 == s3

# 4. Change the string case
name = "Jubayer"

# upper
toupper(name)

# lower
tolower(name)

# Vectors are generally created using the c() function.
v1 <- c(1, 2, 3, 4, 5, 6,7)
class(v1)

# To create Vectors of consecutive number, the : operator very helpful.
v2 <- 1:20
class(v2)

# More complex sequence can be created using seq() function.
v3 <- seq(1, 20, 3)
class(v3)


# Numeric Vector
v1 <- c(0.5, 0.6)

# Logical Vector
v2 <- c(TRUE, FALSE)

# Logical Vector
v3 <- c(T, F)

# Character Vector
v4 <- c("a", "b")

# Integer Vector
v5 <- 1:10

# Complex Vector
v6 <- c(1+0i, 2+0i)

# Mixed
# Character
x1 <- c(1.7, "a")
class(x1)

# Numeric
y <- c(TRUE, 2)
class(y)

# sub-setting
ages <- c(22, 33, 45, 62, 60)

# subset by element single position
ages[2]

# subset by element multiple position (c() function)
ages[c(1, 3, 5)]

# subset by sequence (: operator)
ages[1:3]

# vectorized operations
heights <- c(1.2, 1.3, 1.45, 1.56) * 100



# matrix in R
matrix(1:9)
matrix(1:9, ncol = 3)
matrix(1:9, ncol = 3, nrow = 3)
matrix(1:9, ncol = 3, nrow = 3, byrow = T)


mat <- matrix(1:9, ncol = 3, nrow = 3)

# subset matrix
mat[1]

# subset row
mat[1,]

# subset col
mat[,1]

# factor
smoking_status <- c("yes", "no", "no", "yes")
factor(smoking_status)
factor(c("yes", "no", "no", "yes"))

# list
my_list <- list(
  ages <- c(22, 33, 45, 62, 60),
  smoking_status <- c("yes", "no", "no", "yes"),
  name <- "Jubayer"
)

# Create a Data Frame
df <- data.frame("Age" = c(21, 22, 14, 15, 16, 23),
                 "Name" = c("Jim","Tim", "Babul", "Bithi", "Abul", "Akhi"),
                 "Married" = factor(c("yes", "no", "yes", "no", "yes", "yes")))
# Print Data Frame
df

str(df)
data()
gene_data
data("gene_data")
str(gene_data)
data("genes_list_A")
str(genes_list_A)


