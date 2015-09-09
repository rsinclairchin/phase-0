# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb
#
# 2. What is the line number where the error occurs?
# => 171

# 3. What is the type of error message?
# => syntax

# 4. What additional information does the interpreter provide about this type of error?
# => It was expecting keyword_end

# 5. Where is the error in the code?
# => At the end of the while loop.

# 6. Why did the interpreter give you this error?
# => The while loop isn't closed.

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# => 41
#
# 2. What is the type of error message?
# => NameError

# 3. What additional information does the interpreter provide about this type of error?
# => the variable "south_park" has not been defined

# 4. Where is the error in the code?
# => the variable needs to be declared

# 5. Why did the interpreter give you this error?
# => variable must be assigned a value before being used.

south_park = "lame"

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# => 60

# 2. What is the type of error message?
# => NameError

# 3. What additional information does the interpreter provide about this type of error?
# => the method "cartman" has not been defined

# 4. Where is the error in the code?
# => the method needs to be defined

# 5. Why did the interpreter give you this error?
# => the method needs to be defined

def cartman()
end

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => 80

# 2. What is the type of error message?
# => ArgumentError

# 3. What additional information does the interpreter provide about this type of error?
# => the interpreter was expecting 0 arguments and got 1 argument

# 4. Where is the error in the code?
# => the interpreter did not expect an argument to be passed to the method on line 84

# 5. Why did the interpreter give you this error?
# => the method was defined accepting no arguments, and then was passed an argument

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#  puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
# => 103

# 2. What is the type of error message?
# => ArgumentError

# 3. What additional information does the interpreter provide about this type of error?
# => the interpreter was expecting one argument but got zero arguments

# 4. Where is the error in the code?
# => when the method is called and no arguments are passed to it on line 107

# 5. Why did the interpreter give you this error?
# => the method was defined to take one argument and then was passed no argument when it was called

def cartman_says(offensive_message)
 puts offensive_message
end

cartman_says("offensive_message")

# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# => 128

# 2. What is the type of error message?
# => ArgumentError

# 3. What additional information does the interpreter provide about this type of error?
# => the interpreter received 1 argument when it was expecting 2

# 4. Where is the error in the code?
# => the method was called with only one argument on line 132

# 5. Why did the interpreter give you this error?
# => the method requires 2 arguments but was only passed one

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Fischer')

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# => 151

# 2. What is the type of error message?
# => TypeError

# 3. What additional information does the interpreter provide about this type of error?
# => a string is being attempting to be treated as a fixnum

# 4. Where is the error in the code?
# => the fixnum 5 cannot be multiplied by the string

# 5. Why did the interpreter give you this error?
# => ruby multiplies the first argument by the second argument, and cannot multiply a fixnum by a string

"Respect my authoritay!" * 5

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# => 197

# 2. What is the type of error message?
# => ZeroDivisionError

# 3. What additional information does the interpreter provide about this type of error?
# => it happens around a '/'

# 4. Where is the error in the code?
# => the zero following the /

# 5. Why did the interpreter give you this error?
# => division by zero is not allowed

amount_of_kfc_left = 20/2

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# =>  219

# 2. What is the type of error message?
# => LoadError

# 3. What additional information does the interpreter provide about this type of error?
# => gives the (unsuccessful) path taken to look for the file

# 4. Where is the error in the code?
# => the file provided is not in the correct pathway

# 5. Why did the interpreter give you this error?
# => the interpreter could not find the file in the directory it was lead to


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
# None of these errors were difficult to read. They all said exactly what they meant. I was able to figure out what the issue was by comparing the error message to the code. Knowing the types of errors and going through the code line by line will help to debug future code.