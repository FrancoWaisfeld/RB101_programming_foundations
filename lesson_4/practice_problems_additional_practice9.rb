def titleize(words)
  words.split(' ').map { |word| word.capitalize }.join(' ')
end

thing = titleize("the matrix")
p thing
