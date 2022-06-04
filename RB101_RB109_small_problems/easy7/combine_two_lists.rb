def interleave(array1, array2)
  combined = []
  index = 0
  while index < array1.size
    combined << array1[index] << array2[index]
    index += 1
  end
  combined
end

p interleave([1, 2, 3], ['a', 'b', 'c'])  == [1, 'a', 2, 'b', 3, 'c']
