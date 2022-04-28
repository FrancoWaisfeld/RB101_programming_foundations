def double_odd_indices(numbers)
  index = 0
  double_numbers = []

  loop do
    break if index == numbers.size

    current_number = numbers[index]
    current_number *= 2 if index.odd?
    double_numbers << current_number

    index += 1
  end

  double_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p double_odd_indices(my_numbers)
