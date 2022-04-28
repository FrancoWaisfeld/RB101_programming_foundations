arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

decending_arr = arr.map do |sub_arr|
  sub_arr.sort do |a, b|
    b <=> a
  end
end

p decending_arr
