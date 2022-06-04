def triangle(integer)
  stars = 1
  while integer >= stars
    spaces = integer - stars
    puts "#{' ' * spaces}#{'*' * stars}"
    stars += 1
  end
end

triangle(5)
puts '-----------'
triangle(9)
