def palindromic_number?(integer)
  integer_string = integer.to_s
  integer_string == integer_string.reverse
end

p palindromic_number?(34543) # == true
p palindromic_number?(123210) # == false
p palindromic_number?(22) # == true
p palindromic_number?(5) # == true
