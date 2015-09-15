# Pad an Array

# I worked on this challenge [with: Nathan Parks]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# Pad an Array

# I worked on this challenge [by myself, with: Rosslyn Sinclair Chin]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# Take an array, the desired length of the array, and an optional object to fill the array to the desired length.
# What is the output? (i.e. What should the code return?)
# Return an array that has been filled to the desired length with the optional filler object.

# What are the steps needed to solve the problem?
# First, find the length of the array provided.
# Then add the optional filler or nil until it reaches the desired length.

# 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive
#   len = array.length
#   until len >= min_size
#     array.push(value)
#     len += 1
#   end
# array
# end

# def pad(array, min_size, value = nil) #non-destructive
#   if array.length < min_size
#     len = min_size - array.length
#     new_array = []
#     until new_array.length == len
#       new_array.push(value)
#     end
#     new_array.unshift(array).flatten
#   else
#     array
#   end
# end


# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  array.push(value) until array.length >= min_size
  return array
end

def pad(array, min_size, value = nil) #non-destructive
  if array.length < min_size
    new_array = []
    new_array.push(value) until new_array.length == (min_size - array.length)
    new_array.unshift(array).flatten
  else
    array
  end
end

# 4. Reflection