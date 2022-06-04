def count_non_whitespace_characters(string)
  characters = string.delete(' ').size
end

puts "Please write a word or multiple words:"
word = gets.chomp

character_count = count_non_whitespace_characters(word)

puts "There are #{character_count} characters in '#{word}'."
