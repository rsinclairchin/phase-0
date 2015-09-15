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