def absolute_value_odd?(number)
  number *= -1 if number < 0
  number.remainder(2) == 1
end

p absolute_value_odd?(-1)
