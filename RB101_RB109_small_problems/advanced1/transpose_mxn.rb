def transpose(matrix)
  transposed_matrix = []
  matrix.first.size.times do |column_index|
    row = []
    matrix.size.times { |row_index|  row << matrix[row_index][column_index] }
    transposed_matrix << row
  end
  transposed_matrix
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]
