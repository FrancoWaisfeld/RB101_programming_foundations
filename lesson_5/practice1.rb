arr = ['10', '11', '9', '7', '8']

new_arr = arr.sort_by do |number|
  number.to_i * -1
end

p new_arr
