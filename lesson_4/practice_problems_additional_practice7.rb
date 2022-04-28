statement = "The Flintstones Rock"

characters = statement.chars
characters.delete(" ")

characters_frequency = {}

characters.each do |letter|
  characters_frequency[letter] = characters.count(letter)
end

p characters_frequency
