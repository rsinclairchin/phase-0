# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [1] hours on this challenge.

# 0. Pseudocode

# Input: number of sides
# Output:
# Steps:


# 1. Initial Solution

class Die

  def initialize(sides)
    if sides.class != Integer
      raise ArgumentError.new("Only Integers allowed. Positive ones.")
    elsif sides < 1
      raise ArgumentError.new("No negative-sided die, please")
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    p 1+rand(@sides)
  end
end



# 3. Refactored Solution







# 4. Reflection
# What is an ArgumentError and why would you use one?
# An ArgumentError comes up when somebody trying to use your code does so incorrectly by supplying an unacceptable argument. In this case, if somebody tried to enter a non-integer, they would receive an error. They would also receive an error for entering a negative number.

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# The biggest thing I learned in this challenge was about ArgumentErrors. I had no idea how to implement one before starting, and I found the document offered to help less than useful. I spend a lot of time researching and reading and trying to figure it all out. Eventually, the document in the challenge made more sense to me and when I tried it, it all worked out. Wonderful.
# I also used the rand method for the first time this challenge. Pretty simple, it just selects a random number between 0 and a maximum, should you choose to provide it.

# What is a Ruby class?
# A Ruby class builds types of objects, and blesses them with methods.

# Why would you use a Ruby class?
# You would use a Ruby class to create an object and group together methods relating to that object.

# What is the difference between a local variable and an instance variable?
# Every object built is its own instance. It comes with its own instance variable. These can change from instance to instance. All instances might have a @temp variable, but they will have different values between instances.
# Local variables are restricted to only the method in which they are defined. They can't be used all over different methods in the class, because local variables aren't attached to the instance. They aren't a part of the instance like instance variables are.

# Where can an instance variable be used?
# Instance variables can be used anywhere the instance is. The instance variables are stuck to the instance like a tattoo. The class tattoos the instance with the instance variables and the instance takes them everywhere it goes. This means that instance variables can be used all over the class, in all the methods, anywhere that the instance shows up. Even outside of the class, if you want to take your instance out for a stroll around Rubyland, the instance will always bring its instance variables along. Can't shake 'em. Follows like a shadow.