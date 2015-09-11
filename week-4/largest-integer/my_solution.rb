# Largest Integer

# I worked on this challenge [by myself].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
# def largest_integer(list_of_nums)
#   if list_of_nums.empty?
#     return nil
#   else list_of_nums.sort!
#     return list_of_nums.last
#   end
# end

def largest_integer(list_of_nums)
  if list_of_nums.length == 0
    return nil
  else
    biggie = list_of_nums[0]
    i = 0
    while i<list_of_nums.length do
      if list_of_nums[i] >= biggie
        biggie = list_of_nums[i]
      end
      i+=1
    end
    return biggie
  end
end