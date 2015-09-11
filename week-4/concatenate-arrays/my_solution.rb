# Concatenate Two Arrays

# I worked on this challenge [by myself].


# Your Solution Below

def array_concat(array_1, array_2)
  concat = array_1
  i=0
  while array_2.length > i
    array_1.push(array_2[i])
    i+=1
  end
  return concat
end