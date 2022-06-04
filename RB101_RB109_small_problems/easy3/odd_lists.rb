def oddities(array)
  odd_index_array = []
  array.each_with_index do |element, index| 
    odd_index_array << element if index.even?
  end
  odd_index_array
end

def even_indexes(array)
  even_index_array = []
  array.size.times do |index|
    even_index_array << array[index] if index.odd?
  end
  even_index_array
end

def oddities2(array)
  odd_index_array = []
  index = 0
  loop do
    odd_index_array.push(array[index])
    index += 2
    break if index >= array.size
  end
  odd_index_array
end

stuff = ['a', :abc, 1, 400, 10, 11, 123567]

p oddities(stuff)
p even_indexes(stuff)
p oddities2(stuff)
