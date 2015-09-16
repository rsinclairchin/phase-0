# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# An integer.
# What is the output? (i.e. What should the code return?)
# A string version of the inputted integer with commas inserted every three digits from the right.
# What are the steps needed to solve the problem?
# Separate the integer into blocks of 3 from the right
# Sew it back together into a string with commas

# 1. Initial Solution
def separate_comma(num)
  stringy = num.to_s
  digits = stringy.split
  threes = 3
  while threes < digits.length
    digits.insert(-3,',')
    threes += 3
  end
  digits.join
end


# 2. Refactored Solution




# 3. Reflection