# Input: String
# Output: String
# Explicit rules:
# - write a method that:
# - takes a first name, space, and last name as a single String arugment
# - returns a string that contains the last name, a comma, a space, and the first name
# Implicit rules:
# Database:
# Algorithm:

def swap_name(string)
  string.split.reverse.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'
