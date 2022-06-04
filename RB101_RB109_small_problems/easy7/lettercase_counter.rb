LOWERCASE_ALPHABET = ('a'..'z').to_a
UPPERCASE_ALPHABET = ('A'..'Z').to_a

def letter_case_count(string)
  counts = {lowercase: 0, uppercase: 0, neither: 0}
  string.each_char do |character|
    if LOWERCASE_ALPHABET.include?(character)
      counts[:lowercase] += 1
    elsif UPPERCASE_ALPHABET.include?(character)
      counts[:uppercase] += 1
    else
      counts[:neither] += 1
    end
  end
  counts
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
