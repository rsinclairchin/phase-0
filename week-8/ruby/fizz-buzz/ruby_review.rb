# I worked on this challenge [by myself].
# This challenge took me [#] hours.


# Pseudocode
# Take an array of numbers
# Iterate through that array
# IF a number is evenly divisible by 3
#   replace that number with the word FIZZ
# IF a number is evenly divisible by 5
#   replace that number with the word BUZZ
# IF a number is evenly divisible by 15
#   replace that number with the word FIZZBUZZ
# ELSE leave the number alone.
# RETURN an altered array


# Initial Solution

def super_fizzbuzz(array)
  array = array.map do |number|
    if number%3 == 0
      number = "Fizz"
    elsif number%5 == 0
      number = "Buzz"
    elsif number%15 == 0
      number = "FizzBuzz"
    else number = number
    end
  end
  return array
end

# Refactored Solution


# Reflection