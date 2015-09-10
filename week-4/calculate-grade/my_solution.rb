# Calculate a Grade

# I worked on this challenge [with: Nathan].


# Your Solution Below

def get_grade(grade)

  letter = ""
  if grade >= 90
    letter = "A"
  elsif grade >= 80
    letter = "B"
  elsif grade >= 70
    letter = "C"
  elsif grade >= 60
      letter = "D"
  elsif grade < 60
    letter = "F"
  else
    puts "Not a valid grade"
  end

  return letter

end