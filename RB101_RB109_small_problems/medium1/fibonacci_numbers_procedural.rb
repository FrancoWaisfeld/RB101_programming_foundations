def fibonacci(nth_fibonacci)
  first_number, second_number = 0, 1
  nth_fibonacci.times do
    first_number, second_number = second_number, (second_number + first_number)
  end
  first_number
end

p fibonacci(20) # == 6765
p fibonacci(100) # == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501
