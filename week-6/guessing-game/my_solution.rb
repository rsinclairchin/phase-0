# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [1.5] hours on this challenge.

# Pseudocode

# Input: The answer, as an Integer.
# Output: A symbol that says whether the guess was high, low or correct
# Steps:
# Input and store an Integer as an answer.
# Input a guess (also an Integer).
# Compare the guess to the answer.
# Keep track of:
  # If the guess is higher than the answer, give back :high
  # If the guess is lower, give back :low
  # If the guess is correct, throw a party! JK, give back :correct.


# Initial Solution
=begin
class GuessingGame

  def initialize(answer)
    @answer = answer
    @@solved = false
  end

  def guess(guess)
   @guess = guess
    if @guess > @answer
        @@solved = false
      return :high
    elsif @guess < @answer
        @@solved = false
      return :low
    else
      @@solved = true
      return :correct
    end
  end

  def solved?
    if @@solved == true
      return true
    else return false
    end
  end

end
=end

# Refactored Solution
class GuessingGame

  def initialize(answer)
    @answer = answer
    @solved = false
  end

  def guess(guess)
    if guess > @answer
      @solved = false
      return :high
    elsif guess < @answer
        @solved = false
      return :low
    else
      @solved = true
      return :correct
    end
  end

  def solved?
    @solved==true ? true : false
  end

end

# Reflection
=begin

How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
Instance variables describe the object in real-world terms. How tall it is, what its name is, what it likes to do on a Saturday night. An instance method is a method that only applies to an instance of the class.
  I found an answer on daniweb that explained it really well:
  "An instance method is a method of an instantiated class.
A simple example might be this: You have a Class representing Cat. Each Cat can do some things - it can meow, purr, catch mice, and so forth. Each of those things is the same action no matter which cat does it, so the method is method of the class Cat. But each particular meowing, purring, or catching of mice is done by one particular cat, so it's an instance method." - jon.kiparsky
https://www.daniweb.com/programming/software-development/threads/303430/what-is-instance-method

When should you use instance variables? What do they do for you?
Instance variables are used for values of an instance that are going to be used accross many methods in the class. If you wanted to use the object's graduating year in multiple calculations, you should make an instance variable @grad_yr and use it anywhere in the class!

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?


Why do you think this code requires you to return symbols? What are the benefits of using symbols?
Symbols are unique and unchangeable, so I was able to use them for the too high, too low and just right values. Since symbols only refer to exactly one object, they don't take up much space and yield higher performance rates. Their stability can also be beneficial. They won't ever change, and nor would be want them to (at least in this case).

=end