# Input: Integer
# Output: Integer
# Explicit rules:
# - write a method
# - computes the difference between the square of the sum of the
#   first n positive integers and the sum of the squares of the
#   first n positive integers.
# Implicit rules:
# Database: Array
# Algorithm:
# - 

def sum_square_difference(number)
  integers = []
  1.upto(number) { |num| integers << num }
  square_of_sum = (integers.sum) ** 2
  sum_of_squares = integers.map { |num| num ** 2 }.sum
  (square_of_sum - sum_of_squares).abs
end

p sum_square_difference(3) == 22
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
