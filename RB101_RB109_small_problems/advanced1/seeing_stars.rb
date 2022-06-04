def create_rows(number)
  rows = []
  whitespaces_per_spot = 0

  loop do
    rows << "*#{' ' * whitespaces_per_spot}*#{' ' * whitespaces_per_spot}*"
    break if rows.last.length == number
    whitespaces_per_spot += 1
  end
  rows
end

def star(number)
  rows = create_rows(number)

  rows.reverse.each { |row| puts row.center(number) }
  puts "*" * number
  rows.each { |row| puts row.center(number) }
  nil
end

star(7)
puts
star(9)
puts
