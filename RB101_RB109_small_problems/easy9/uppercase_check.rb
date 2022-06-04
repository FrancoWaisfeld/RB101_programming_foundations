# Input: String
# Output: Boolean
# Explicit rules:
# - write a method
# - return true if all alphabetic characters inside the string are uppercase, false otherwise.
# - non alphabetic characters should be ignored
# Implicit rules:
# - an empty String arugment returns true
# Database: String
# Algorithm:
# - if the String argument is the same as the String argument with every alphabetic characters captialzied then return true. If not return false


def uppercase?(string)
  string == string.upcase
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
