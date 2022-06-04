CONSONANTS = ["b", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r",
  "s", "t", "v", "w", "x", "y", "z"]

def double_consonants(string)
  string.chars.map do |character|
    if CONSONANTS.include?(character.downcase)
      character * 2 
    else
      character
    end
  end.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
