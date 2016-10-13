# Exercise 5: Gates Foundation Educational Grants

# Read data into a variable called `grants` using the `read.csv` function
grants <- read.csv('data/gates_money.csv', stringsAsFactors = FALSE)

# Use the View function to look at your data
View(grants)

# Create a variable `spending` as the `total_amount` column of the dataset
spending <- grants$total_amount

# Confirm that your `spending` variable is a vector using the `is.vector` function
is.vector(spending)

# Create a variable `org` as the `organization` column of the dataset.
# Unfortunately, it will not be a vector by default, so you must transform it using the as.vector function
org <- as.vector(grants$organization)
is.vector(org)
### Now you can ask some more interesting questions about the dataset.  Store your answers in variables ###

# What was the mean grant value?
mean.grant.value <- mean(spending)
mean.grant.value

# What was the dollar amount of the largest grant?
largest.grant <- max(spending)
largest.grant

# What was the dollar amount of the smallest grant?
smallest.grant <- min(spending)
smallest.grant

# Which organization received the largest grant?
lucky.org <- org[spending == largest.grant]
lucky.org

# Which organization received the smallest grant?
unlucky.org <- org[spending == smallest.grant]
unlucky.org

# How many grants were awarded in 2010?
grants.2010 <- length(spending[grants$start_year == 2010])
grants.2010