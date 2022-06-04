puts "What is the bill?"
bill = gets.chomp.to_f
puts "What is the tip percentage?"
tip_percentage = gets.chomp.to_f

tip = (bill * (tip_percentage / 100)).round(2)
total = (tip + bill).round(2)

puts
puts "The tip is $#{format("%.2f",tip)}"
puts "The total is $#{format("%.2f",total)}"
