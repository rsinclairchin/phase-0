#full name greeting

puts "What is your first name?"
first_name = gets.chomp
puts "What is your middle name?"
middle_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp

puts "Hello, " + first_name + " " + middle_name + " " + last_name + "!"

#bigger, better favorite number

puts "What is your favourite number?"
fave_num = gets.chomp
big_num = fave_num.to_i + 1
puts "Did you know " + big_num.to_s + " is even bigger and even better than " + fave_num.to_s + "?"


# Defining a local variable is as easy as typing the variable name, an equals sign and the value you want to assign to the variable. It will be local to its scope, which will be within its method, or else local to its loop. You can usually find the scope of the variable by looking at the block of code that it was defined in.

# Defining a method starts with the keyword def, and ends with the keyword end. After def comes the name of the method and any arguments the method will take. Everything in the middle describes what the method does.

# A method is a block of code that can be called by name as needed. A variable is not a block of code, it is just a value. A method does. A variable is done to.

# To run a ruby program from the command line, type ruby followed by the name  of the file containing the ruby program. Alternately, you can type irb to enter the interactive ruby shell. From there you can write and execute real ruby code!

# To run an RSpec file from the command line, type rspec and then the name of the RSpec file.

# I didn't find anything in this challenge particularly confusing. It was all fairly intuitive. Sometimes what was confusing was trying to over-explain why things were the way the were!