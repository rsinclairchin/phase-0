# Reverse Words


# I worked on this challenge [by myself].
# This challenge took me [1] hours.

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

def reverse_words(string)
  string.split(" ").map(&:reverse).join(" ")
end

# Reflection
=begin
What concepts did you review or learn in this challenge?
I reviewed iterating over an array with map, and chaining together methods into one long line of code. I learned about the &: shortcut, which is really actually quite magical. It turns reverse into a symbol first, with the :. Then it turns into a proc, which is just a block of code that gets given the array made by the split method. And finally, it's turned into a block. It took some playing around to get it to be the right type, but I felt pretty cool when I got it to work in my code. Look at that! So clean, so DRY :)

What is still confusing to you about Ruby?
Ruby is not so much confusing as it is fascinating. I am still amazed by the plethora of methods tailored to your every need, moreso now that I've spent some time with JavaScript. I'm finding new shortcuts, tricks and treasures all the time. It's an incredible world of discovery.

What are you going to study to get more prepared for Phase 1?
“...keep one thing in mind as you prepare to enter these studies: the only way to get better at solving problems is to solve more problems."
So yeah, I'm going to solve a bunch of challenges, probably mostly in Ruby because I'm in love. Codewars is excellent practice, and there are similar sites that are good for sharpening up coding skills. I'm also going to try to put together cheat sheets for all the topics covered in Phase 0. I remember that really helped me out when I was in college, so... yep. That's my plan.

=end