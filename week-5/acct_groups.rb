# Pseudocode
# Take an array of names
# Put everybody into groups of 5
# If there are fewer than 3 left over
#   take two people out of two different groups of 5
#   put them into the last group

# Initial Solution
def group(peeps)
  groups = []
  peeps.each_slice(5) {|a| groups << a}
  groups[-2].pop
  until groups[-1].length >= 4
    volunteer = groups[-2].pop
    groups[-1] << volunteer
  end
  p groups
end

# Refactored Solution
def group(peeps)
  groups = []
  peeps.each_slice(5) {|a| groups << a}
  groups[-2].pop
  i=-1
  while i > -5
    until groups[i].length >= 4
      groups[i] << groups[i-1].pop
    end
    i -= 1
  end
  p groups
end

# Fancied Up Solution


# Test
peeps = ["Shunqian Luo (Nathan)", "Kim Allen","Jenna Andersen", "Pamela Antonow", "Jupiter Baudot", "Ovi Calvo", "Awilda Cantres", "Celeste Carter", "Mike Cerrone", "Eunice Choi","Un Choi", "Kristie Chow", "Regina Compton", "Marcus Davis", "Paul Etscheit", "Solomon Fernandez", "Marcel Galang", "Ricky Binhai Hu", "Kai Huang", "Harmin Jeong", "Lauren Jin", "CJ Joulain", "Michael Landon", "Richard Leo", "Julian Lesse", "Ryan Lesson", "Ian Lockwood", "Christopher Mark", "Lauren Markzon", "Miguel Angel Melendez", "David O'Keefe", "Nathan Park", "Farman Pirzada", "Samuel Frederick Purcell", "Salim Rahimi", "Colin Razevich", "Irina Renteria", "Jamie Runyan", "Eric Shou", "Rosslyn Sinclair-Chin", "Aji Slater", "Marvy Tagala", "George Warnbold", "Shawn Watson", "Hana Worku", "Nicholas Yee"]
group(peeps)