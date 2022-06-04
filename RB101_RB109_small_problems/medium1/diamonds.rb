def diamond(grid_size)
  asterisks = 1

  while asterisks < grid_size
    puts ('*' * asterisks).center(grid_size)
    asterisks += 2
  end
  
  while asterisks > 0
    puts ('*' * asterisks).center(grid_size)
    asterisks -= 2
  end
end

def display_line(spaces, grid_size)
  white_space = ' ' * spaces
    puts ('*' + white_space + '*').center(grid_size)
end

def diamond2(grid_size)
  spaces = 1
  puts ("*").center(grid_size)

  while spaces < grid_size - 2
    display_line(spaces, grid_size)
    spaces += 2
  end
  
  while spaces > 0
    display_line(spaces, grid_size)
    spaces -= 2
  end
  puts ("*").center(grid_size)
end

diamond(9)

diamond2(9)
