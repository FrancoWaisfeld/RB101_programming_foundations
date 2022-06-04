require 'pry'
require 'pry-byebug'

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, place)
  all_digits = number.to_s.chars
  all_digits[-place..-1] = rotate_array(all_digits[-place..-1])
  all_digits.join
end

def max_rotation(number)
  count_digits = number.to_s.chars.size
  count_digits.downto(2) do |count|
    number = rotate_rightmost_digits(number, count)
  end
  number.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
p max_rotation(10001)
