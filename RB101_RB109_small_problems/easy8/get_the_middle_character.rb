def center_of(string)
  middle_index = string.size / 2
  if string.size.odd?
    string[middle_index]
  else
    string[middle_index - 1, 2]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
