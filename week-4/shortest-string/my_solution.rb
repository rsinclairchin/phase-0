# Shortest String

# I worked on this challenge [by myself].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
 def shortest_string(list_of_words)

#If presented with an array of mixed objects, maybe not all strings
#   strings = []
#   list_of_words.each do |i|
#     if i.is_a? String
#       strings.push(i)
#     end
#   end



  if list_of_words.length ==0
    return nil
  else
    i=0
    shorty = list_of_words[0]
    while i<=list_of_words.length do
       if list_of_words[i].length <= shorty.length
         shorty = list_of_words[i]
      end
       i += 1
       return shorty
    end
  end
end