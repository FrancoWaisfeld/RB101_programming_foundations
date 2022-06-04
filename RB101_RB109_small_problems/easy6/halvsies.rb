def halvsies(array)
  halves = [[],[]]
  array.each_with_index do |element, index|
    if index < (array.length / 2.0).ceil
      halves[0] << element
    else
      halves[1] << element
    end
  end
  halves
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
