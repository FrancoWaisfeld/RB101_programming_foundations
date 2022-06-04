def running_total(array)
  sum = 0
  array.map { |number| sum += number }
end
def running_total2(array)
  sum = 0
  array.each_with_object([]) do |number, running_total_array|
    running_total_array << (sum += number)
  end
end

def running_total3(array)
  running_total_array = []
  array.inject(0) do |sum, number|
    running_total_array[running_total_array.length] = sum + number
  end
  running_total_array
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

p running_total2([2, 5, 13]) == [2, 7, 20]
p running_total2([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total2([3]) == [3]
p running_total2([]) == []

p running_total3([2, 5, 13]) == [2, 7, 20]
p running_total3([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total3([3]) == [3]
p running_total3([]) == []
