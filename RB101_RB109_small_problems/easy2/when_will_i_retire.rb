puts "What is your age?"
age = gets.to_i

puts "At what age would you like to retire?"
retired_age = gets.to_i

years_until_retired = retired_age - age

current_year = Time.now.year

puts "It's #{current_year}. You will retire in #{current_year +
years_until_retired}."
puts "You only have #{years_until_retired} years of work to go!"
