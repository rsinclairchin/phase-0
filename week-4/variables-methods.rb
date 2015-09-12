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