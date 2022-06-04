def ascii_value(string)
  sum = 0
  string.each_char { |character| sum += character.ord }
  sum
end

p ascii_value('Four score')
p ascii_value('Launch School')
p ascii_value('a')
p ascii_value('')
