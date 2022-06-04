def rotate90(matrix)
  rows_count = matrix.first.size
  columns_count = matrix.size
  rotated_matrix = []
  rows_count.times { rotated_matrix << [] }

  rows_count.times do |rx|
    columns_count.times do |cx|
      rotated_matrix[rx][cx] = matrix.reverse[cx][rx]
    end
  end
  rotated_matrix
end

def rotate(matrix, degrees)
  turns = degrees / 90
  rotated_matrix = matrix
  turns.times { rotated_matrix = rotate90(rotated_matrix) }
  rotated_matrix
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

p rotate90(matrix1) == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p rotate90(matrix2) == [[5, 3], [1, 7], [0, 4], [8, 2]]
p rotate90(rotate90(rotate90(rotate90(matrix2)))) == matrix2
p rotate(matrix1, 360)
