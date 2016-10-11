# Exercise 2: Creating data frames
# View(my.data.frame) to view data table

# Create a vector of the number of points the Seahawks have scored in each game this season (google "Seahawks")
ppg <- c(12, 3, 37, 27)

# Create a vector of the number of points the Seahwaks have allowed to be scored against them in each game this season
points.allowed <- c(10, 9, 18, 17)

# Combine your two vectors into a dataframe
hawks.data <- data.frame("Points Per Game"=ppg, "Points Allowed"=points.allowed)

# Create a new column "diff" that is the difference in points
hawks.data$diff <- c(ppg - points.allowed)

# Create a new column "won" which is TRUE if the Seahawks won
hawks.data$won <- hawks.data$diff>0

# Create a vector of the opponents
lesser.teams <- c("Dolphins", "Rams", "49ers", "Jets")

# Assign your dataframe rownames of their opponents
rownames(hawks.data) <- lesser.teams

hawks.data

View(hawks.data)

