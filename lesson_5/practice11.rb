arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

mutliples_of_3_arr = arr.map do |sub_arr|
  sub_arr.select do |number|
    number % 3 == 0
  end
end

p mutliples_of_3_arr
