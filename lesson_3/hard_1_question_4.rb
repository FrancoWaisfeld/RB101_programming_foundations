def is_an_ip_number?(numeric_string)
  (numeric_string.to_i.to_s == numeric_string) && (0 <= numeric_string.to_i && numeric_string.to_i <= 255)
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")

  valid_ip_address = nil
  if dot_separated_words.size == 4
    dot_separated_words.each do |word|
      valid_ip_address = is_an_ip_number?(word)
    end
  end
  valid_ip_address ? true : false
end

p dot_separated_ip_address?("10.1.1.1.1.5")


# take an input_string
# check that there are only 4 numbers seperated by periods.
# check that all the numbers are between 0 and 255
# return true if both conditions are met, false otherwise

# take an input_string
# create an array using .split(".") and assign it to a variable
# count that the .size of array and make sure it is == 4
# 