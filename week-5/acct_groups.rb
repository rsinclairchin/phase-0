# Pseudocode
# Take an array of names
# Put everybody into groups of 5
# If there are fewer than 3 left over
#   take two people out of two different groups of 5
#   put them into the last group

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