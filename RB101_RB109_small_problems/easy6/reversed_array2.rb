def reversed(array)
  array.inject([], :unshift)
end

p reversed([1,2,3,4]) # == [4,3,2,1]          # => true
p reversed(%w(a b e d c)) == %w(c d e b a)  # => true
p reversed(['abc']) == ['abc']              # => true
p reversed([]) == []                        # => true
p '-----'
p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reversed(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true
