def reversed!(array)
  place = 0
  array_copy = Array.new(array)
  array.map! do |element|
    place += 1
    array_copy[array_copy.length - place]
  end
end

p list = [1,2,3,4]
p result = reversed!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true
p '-------'
p list = %w(a b e d c)
p reversed!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true
p '-------'
p list = ['abc']
p reversed!(list) == ["abc"] # true
p list == ["abc"] # true
p '-------'
p list = []
p reversed!(list) == [] # true
p list == [] # true
