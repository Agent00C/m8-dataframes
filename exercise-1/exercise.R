# Exercise 1: Lists


# Create a vector of everything you ate for breakfast
breakfast <- c("oatmeal", "eggs","berries")

# Create a vector of everything you ate for lunch
lunch <- c("toast","fish","spinach")

# Create a list `meals` that has contains your breakfast and lunch
meals <- list(breakfast = breakfast, lunch = lunch)

# Add a `dinner` index to your `meals` list that has what you plan to eat for dinner
meals$dinner <- c("pizza","beer","more beer")

# Extract your 'dinner' element from your list and save it in a vector called 'dinner'
dinner <- meals$dinner

### Bonus ### 
# Create a list that has the number of items you ate for each meal
food.items <- lapply(meals, length)

# Write a function that adds pizza to every meal
AddPizza <- function(x) {
  x <- c(x, "pizza")
}

# Add pizza to every meal!
better.meals <- lapply(meals, AddPizza)
