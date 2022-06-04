def penultimate(string)
  string.split[-2]
end

def middle_word(string)
  words = string.split
  return nil if words.size == 0
  middle_index = ((words.size) / 2.0).round * -1
  if words.size.odd?
    words[middle_index]
  else
    "#{words[middle_index - 1]} #{words[middle_index]}"
  end
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'


p middle_word('last word this')
p middle_word('Launch School is great!')
p middle_word('')
