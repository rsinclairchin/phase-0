# Pseudocode

# Create a new list
# Input: Hash name
# Output: Hash with that name

# Add an item to list
# Input: Item
# Output: Updated Hash

# Remove an item from list
# Input: Item to be removed
# Output: Updated Hash

# Update quantities in list
# Input: Numeric value
# Output: Updated Hash

# Print the list
# Input: name of hash itself
# Output: Organized print out of Hash


def new_hash(groceries)
  groceries = Hash.new
end

def add_item(groceries, item, quant)
  groceries[item] = quant
end

def remove_item(groceries, item)
  groceries.delete(item)
end

def update(groceries, item, quant)
  groceries[item] = quant
end

def print(groceries)
  groceries.each { |item, quant| puts "Please remember to buy #{quant} #{item}"}
end

# Test
food = new_hash("food")
add_item(food, "lemonade", 2)
add_item(food, "tomatoes", 3)
add_item(food, "Onions", 1)
add_item(food, "Ice Cream", 4)
remove_item(food, 'lemonade')
update(food, "Ice Cream", 1)
print(food)


# Reflection

# What did you learn about pseudocode from working on this challenge?
# I learnt that although it may seem oversimplified, you can always put something down for pseudocode. Even if it is as basic as listing the input and the output for each method.
#
# What are the tradeoffs of using Arrays and Hashes for this challenge?
# We chose to use a hash because we wanted to associate a quantity with every list item. Although we could have used arrays for this, a hash kept everything together and organized, and we were able to easily change the quantaties associated with the list items.
#
# What does a method return?
# A method returns the last thing that was evaluated, or what comes after the command "return".

# What kind of things can you pass into methods as arguments?
# Anything! Integers, strings, arrays.. any ruby object can be passed into a method as an argument.
#
# How can you pass information between methods?
# Information can be passed between methods through the arguments provided. The hash we created to keep our grocery list organized was passed to each of the methods as an argument. This allowed each method to know about the hash and modify or use it.
#
# What concepts were solidified in this challenge, and what concepts are still confusing?
# Passing information between methods is still a little confusing. I understand variable scope fairly well, but I'm not entirely confident putting it into practice. I think things will come together with the more practice I get.