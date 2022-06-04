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

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
