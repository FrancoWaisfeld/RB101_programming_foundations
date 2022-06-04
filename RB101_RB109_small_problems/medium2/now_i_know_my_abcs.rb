BLOCKS = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'],
          ['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'],
          ['V', 'I'], ['BL', 'Y'], ['Z', 'M']]

def block_word?(word)
  upcase_word = word.upcase
  BLOCKS.each { |block| return false if upcase_word.count(block.join) >= 2 }
  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
