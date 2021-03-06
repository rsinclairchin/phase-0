# Numbers to Commas Solo Challenge

# I spent [2] hours on this challenge.

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
    digits.insert(-threes,',')
    threes += 3
  end
  digits.join
end


# 2. Refactored Solution
def separate_comma(num)
  stringy = num.to_s
  digits = stringy.split(//)
  threes = 4
  while threes <= digits.length
    digits.insert(-threes,',')
    threes += 4
  end
  digits.join
end


# # 3. Reflection
# What was your process for breaking the problem down? What different approaches did you consider?


# Was your pseudocode effective in helping you build a successful initial solution?


# What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?


# How did you initially iterate through the data structure?


# Do you feel your refactored solution is more readable than your initial solution? Why?
My refactored solution is