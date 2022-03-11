# original code: puts "the value of 40 + 2 is " + (40 + 2)
# This code produces an error because it is attempting to
# concatenate a string class object and an integer class object.

# Correct versions below

puts "the value of 40 + 2 is " + (40 + 2).to_s

puts "the value of 40 + 2 is #{40 + 2}"
