def get_name
  puts "What is your name?"
  name = gets.chomp
  name = 'Teddy' if name == ''
  name
end

age = rand(2..200)
name = get_name

puts "#{name} is #{age} years old!"
