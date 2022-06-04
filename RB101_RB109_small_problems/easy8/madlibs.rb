# Input: 4 Strings
# Output: display a String
# Explicit rules:
# - create a mad-lib program that prompts for a noun, ver, adverb, and adjective
# - a mad-lib is a game where you creat a story template with blanks for words
# Implicit rules:
# Database:
# Algorithm:
# - ask the user for a noun and assign it to a variable called noun
# - ask the user for a verb and assign it to a variable called verb
# - ask the user for a adverb and assign it to a variable called adverb
# - ask the user for a adjective and assign it to a variable called adjective
# - create a variable called story that is a String using the variables noun, verb, adverb, and adjective within in.
# - Display story

def prompt(string)
  puts ">> #{string}"
end

prompt "Enter a noun:"
noun = gets.chomp

prompt "Enter a verb:"
verb = gets.chomp

prompt "Enter an adjective:"
adjective = gets.chomp

prompt "Enter an adverb:"
adverb = gets.chomp

puts "You #{verb} with your #{adjective} #{noun} #{adverb}."
