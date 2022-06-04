# After the 60th Fibonacci number, the last digit begins to repeat.
# I used the fibonacci_repeating_last_digit method to determine this. It returns
# an Array of the indexs at which the sequence begins to repeat.
# I stored the repeating digits in a constant for better performance.
FIBONACCI_REPEATING_SEQUENCE =
  [1, 1, 2, 3, 5, 8, 3, 1, 4, 5, 9, 4, 3, 7, 0, 7, 7, 4, 1, 5, 6, 1, 7, 8, 5, 3,
   8, 1, 9, 0, 9, 9, 8, 7, 5, 2, 7, 9, 6, 5, 1, 6, 7, 3, 0, 3, 3, 6, 9, 5, 4, 9,
   3, 2, 5, 7, 2, 9, 1, 0]

def fibonacci_repeating_last_digit
  digits = [1, 1]
  index = 0
  potentially_repeating = []
  loop do
    next_digit = (digits[-2] + digits[-1]) % 10

    # if two consequtive digits repeat, then record the index
    # this may mean that the last digits are repeating but not guaranteed
    if next_digit == digits[1] && digits[-1] == digits[0]
      potentially_repeating << index
    end

    digits << next_digit
    index += 1

    return potentially_repeating if potentially_repeating.size == 4
  end
end

def fibonacci_last(nth_fibonacci)
  index = (nth_fibonacci % 60) - 1
  FIBONACCI_REPEATING_SEQUENCE[index]
end

p fibonacci_last(15)        == 0
p fibonacci_last(20)        == 5
p fibonacci_last(100)       == 5
p fibonacci_last(100_001)   == 1
p fibonacci_last(1_000_007) == 3
p fibonacci_last(123_456_789) == 4
p fibonacci_last(123_456_789_987_745) == 5
