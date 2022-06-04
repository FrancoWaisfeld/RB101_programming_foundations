def leading_substrings(string)
  substrings = []
  string.chars.each_index { |index| substrings.push(string[0..index]) }
  substrings
end

def substrings(string)
  all_lines = []
  string.chars.each_index { |index| all_lines << string[index..-1] }
  all_lines.map { |line| leading_substrings(line) }.flatten
end

def palindrome?(string)
  string == string.reverse && string.size > 1
end

def palindromes(string)
  all_substrings = substrings(string)
  all_substrings.select { |substring| palindrome?(substring) }
end

p palindromes('abcd')  == []
p palindromes('madam')  == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye')  == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
