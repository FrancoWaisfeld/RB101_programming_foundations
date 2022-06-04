def reverse_words(string)
  string.split.map do |word|
    if word.length >= 5
      word.reverse
    else
      word
    end
  end.join(' ')
end

p reverse_words('This sentence will look strange')