# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][0]
p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data[array:][1][hash:]
p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.collect! do |element|
  if element.kind_of?(Array)
    element.collect! {|inner| inner+=5}
  else element+=5
  end
end
p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
startup_names.collect! do |element|
  if element.kind_of?(Array)
    element.collect! do |inner|
      if inner.kind_of?(Array)
        inner.collect! {|name| name+"ly"}
      else inner+"ly"
      end
    end
  else element+"ly"
  end
end
p startup_names

# Reflection
=begin
What are some general rules you can apply to nested arrays?
They are accessed from the outermost to the innermost. You need as many access bit (array[access_bit]) as there are outer arrays around the element you're trying to reach. That sounded confusing but then again so are nested arrays.

What are some ways you can iterate over nested arrays?
Ask for each element to be iterated over, and if that element happens to be an array then to also iterate over that, and if there happen to be an array inside of one of those elements then to please also iterate over that, and on and on... Sounds like a loop, doesn't it?

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
We initially used the each method to iterate over every element inside the arrays, but changed it to collect! because we wanted to alter the array that we were iterating over. We could also have used map! and accomplished the same thing.

=end