# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [.5] hours on this challenge.

# Pseudocode

# Input: An array of strings
# Output: A randomly selected string
# Steps: Find a random number less than or equal to the length of the array, take whatever string lives in that index.


# Initial Solution

# class Die
#   def initialize(labels)
#     if labels.length < 1
#       raise ArgumentError.new("Please pass a non-empty array")
#     else
#       @labels = labels
#     end
#   end

#   def sides
#     @labels
#   end

#   def roll
#     i = rand(1..@labels.length)
#     p @labels[i]
#   end
# end



# Refactored Solution

class Die
  def initialize(labels)
    if labels.length < 1
      raise ArgumentError.new("Please pass a non-empty array")
    else
      @labels = labels
    end
  end

  def sides
    @labels.length
  end

  def roll
    p @labels[rand(@labels.length)]
  end
end




# Reflection

# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
# The main difference was changing the sides variable to labels. Other than that, I only had to take the extra step to use the random number to access information in an array. The logic was essentially the same and I didn't have to change very much of my previously written Die class.

# What does this exercise teach you about making code that is easily changeable or modifiable?
# The Die class that I had written before was very easy to modify for this challenge. It will be easy to add features to this class, or change it to accept different types of inputs.

# What new methods did you learn when working on this challenge, if any?
# I used all the same methods as my original Die class.

# What concepts about classes were you able to solidify in this challenge?
# I was able to practice raising ArgumentErrors, which is still very new to me.