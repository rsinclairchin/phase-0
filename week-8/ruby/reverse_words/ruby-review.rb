# Reverse Words


# I worked on this challenge [by myself].
# This challenge took me [#] hours.

# Pseudocode
# Take a sentence
# Split it into words
# Put the words into an array
# Iterate through the array
# Reverse each word
# Glue it back together into a string.

# Initial Solution
def reverse_words(string)
  words = string.split(" ")
  words = words.map {|word| word.reverse}
  words.join(" ")
end

# Refactored Solution





# Reflection