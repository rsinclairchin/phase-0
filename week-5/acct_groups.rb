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

# Reflect
# What was the most interesting and most difficult part of this challenge?
# The most interesting and the most difficult part of this challenge was the open-endedness of it. Add complexity. Decide what the output should be. I felt like I was just tossed into the deep end to figure it out on my own. I think this alright? It feels ok to me? I hope this is what they were looking for.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# My pseudocode is getting much, much better. It's still not stellar, but it's not nearly as bad as it was when I started. Pairing with somebody who had it down helped give me a bit of a boost in the right direction, and now it's just getting better the more I do it.

# Was your approach for automating this task a good solution? What could have made it even better?
# This could have been made better if the groups could be evenly split up regardless of how many people are in each group. I don't think my code would work as it is written now for groups anything other than 4 or 5. It would need to be altered for groups of 10, for instance. Now I want to go back and see if I can make it do that! Add complexity!

# What data structure did you decide to store the accountability groups in and why?
# I saved my groups in an array, because I wasn't relating the groups to anything in particular. They're just groups.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# I had to fix a small error in my refactored solution. I didn't learn any new Ruby methods, but I did learn how to count to 5!
# For my initial solution I used a new Ruby method called each_slice, and learned about slice in the process. It was tricky because slice cuts out the value where the array was split, and I knew I wanted something that split but didn't lose any values. A little research later I found each_slice and all my problems were solved.