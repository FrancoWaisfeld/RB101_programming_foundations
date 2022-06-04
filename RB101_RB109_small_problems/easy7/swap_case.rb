LOWERCASE_ALPHABET = ('a'..'z').to_a
UPPERCASE_ALPHABET = ('A'..'Z').to_a

def caseswap(string)
  string.chars.map do |character|
    if UPPERCASE_ALPHABET.include?(character)
      character.downcase
    elsif LOWERCASE_ALPHABET.include?(character)
      character.upcase
    else
      character
    end
  end.join
end

p caseswap('CamelCase') == 'cAMELcASE'
p caseswap('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
