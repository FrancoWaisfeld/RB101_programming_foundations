def average(array)
  sum = 0
  array.each { |number| sum += number }
  average_number = sum.to_f / array.count
end

numbers = [12312, 2312, 324, 3]

puts average(numbers)
