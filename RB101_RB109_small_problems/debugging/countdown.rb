def decrease(counter)
  counter -= 1
end

counter = 10

10.times do
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH!'

puts '-' * 10

counter = 10

counter.downto(1) { |count| puts count }
puts 'LAUNCH!'
