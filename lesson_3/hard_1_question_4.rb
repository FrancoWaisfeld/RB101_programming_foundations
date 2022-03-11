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
