def multiply_lists(array1, array2)
  array1.zip(array2).map { |sub_array| sub_array.inject(:*) }
end

p multiply_lists([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
