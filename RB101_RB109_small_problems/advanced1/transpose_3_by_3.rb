def transpose(matrix)
  transposed_matrix = []
  3.times do |column_index|
    row = []
    3.times { |row_index|  row << matrix[row_index][column_index] }
    transposed_matrix << row
  end
  transposed_matrix
end

def transpose!(matrix)
  matrix.size.times do |cx|
    matrix.size.times do |rx|
      next if cx == rx
      matrix[cx][rx], matrix[rx][cx] = matrix[rx][cx], matrix[cx][rx]
    end
  end
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

transpose!(matrix)

p matrix
