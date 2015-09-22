# Your Names
# 1) Kim
# 2) Rosslyn

# We spent [2] hours on this challenge.

# Bakery Serving Size portion calculator.

#Create method that calls what item to make and how many
def serving_size_calc(item_to_make, order_quantity)
  #Defining a list of items we can bake
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  #Checks to see if the item to make is in our library
=begin
  error_counter = 3

  library.each do |food|
    if library[food] != library[item_to_make]
      p error_counter += -1
    end
  end

  if error_counter > 0
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
=end
  unless library.has_key?(item_to_make)
    raise ArgumentError.new ("#{item_to_make} is not available")
  end
  #Check to see if there are leftovers
=begin
  serving_size = library.values_at(item_to_make)[0]
  serving_size_mod = order_quantity % serving_size
=end
  serving_size = library[item_to_make]
  leftovers = order_quantity % serving_size
  #Determines how much to make of an item and whether there are leftovers
  if leftovers >= 5
    if leftovers % 5 == 0
      suggested_baking_item = "A cake."
    else suggested_baking_item = "A cake and #{leftovers - 5} cookies."
    end
  else suggested_baking_item = "#{leftovers} cookies."
  end

  if leftovers == 0
    "Calculations complete: Make #{order_quantity/serving_size} #{item_to_make}"
  else
    "Calculations complete: Make #{order_quantity/serving_size} #{item_to_make}, you have #{leftovers} leftover portion(s). Suggested alternative item(s): #{suggested_baking_item}"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("pie", 13)
p serving_size_calc("THIS IS AN ERROR", 5)



#  Reflection
=begin

What did you learn about making code readable by working on this challenge?
Pick descriptive variable names. Use simple methods for simple tasks. Indentation matters. Like, not even just for readability, it actually really does matter.

Did you learn any new methods? What did you learn about them?
No new methods this time. Except of course serving_size_calc!

What did you learn about accessing data in hashes?
Use has_key? to find out if a hash has a specified key. I think include? is only good for arrays. Similarily, has_value? can be used to find out if a hash has a specified value.

What concepts were solidified when working through this challenge?
Raising ArgumentErrors. This is now my third time raising an error and I was actually able to look at it and say somewhat confidently that it was raised correctly.

=end