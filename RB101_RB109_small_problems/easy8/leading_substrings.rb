def leading_substrings(string)
  substrings = []
  string.chars.each_index { |index| substrings.push(string[0..index]) }
  substrings
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
