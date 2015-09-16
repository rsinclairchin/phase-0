# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# An array of ruby objects

# What is the output? (i.e. What should the code return?)
# An array of the most frequently occurring items in the input array

# What are the steps needed to solve the problem?
# define a method that takes in an array as an argument
# set up a hash with the keys being each element in the array and the value being 0
# iterate through the array
#  everytime we encounter each element in the array, we will add 1 to the value in the hash corresponding to the key.
# find the max value in the hash
# iterate over the hash to find all the keys with the max value
#  add those keys to the array
# return an array of keys with the highest value


# 1. Initial Solution

# def mode(things)
#   storage = Hash.new
#   things.each do |i|
#     unless storage.include?(i)
#       storage[i]=0
#     end
#   end
#   things.each do |i|
#     storage[i] += 1
#   end
#   max = storage[0]
#   i = 1
#   while storage[i] > max
#     max = storage[i]
#     i+=1
#   end
#   frequent_things=[]
#   storage.each do |k,v|
#     if v == max
#       frequent_things << k
#     end
#   end
#   puts frequent_things

# end

# 3. Refactored Solution
def mode(things)
  storage = Hash.new(0)
  frequent_things = Array.new
  things.each do |i|
    storage[i] += 1
  end
  storage.each do |k,v|
    if v == storage.values.max
      frequent_things << k
    end
  end
  return frequent_things
end


# 4. Reflection

# Which data structure did you and your pair decide to implement and why?
# We initially thought of a solution involving arrays, but we quickly realized when we were trying to associate one array with another that we ought to be using a hash. Using a hash is always easier when trying to relate one value to another item.

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
# Absolutely yes. My pair was an excellent pseudocoder and I learned a lot from her. For my last pairing, we ony listed inputs and outputs, without any hint of methods or structure or anything. My pair for this challenge was able to take the approach we had discussed and lay out step by step.

# What issues/successes did you run into when translating your pseudocode to code?
# The pseudocode made it very easy to write out the code. Having it written out step by step gave us a sort of map or guideline to follow when we were translating into code.

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
# We used each to iterate over our arrays and our hash. It made the most sense seeing as we wanted to touch every element inside the container, and each allowed us to do this without having to set up a counter like we would have had to do with a while or an until loop. We didn't discover any new iteration methods during this challenge (each worked really well for us), but we did make use of the max method and learned the difference between max and max_by. This opened up the world of Enumerables, which I now realize I need to explore further.