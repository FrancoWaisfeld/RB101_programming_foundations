ALPHABET = ('a'..'z').to_a

def cleanup(string)
  alphabetic_and_whitespace = []

  string.chars.each do |character|
    if ALPHABET.include?(character)
      alphabetic_and_whitespace << character
    else
      alphabetic_and_whitespace << ' ' unless alphabetic_and_whitespace.last == ' '
    end
  end
  
  alphabetic_and_whitespace.join
end

p cleanup("---what's my +*& line?") == ' what s my line '
