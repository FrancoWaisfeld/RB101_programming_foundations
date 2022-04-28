require 'pry'
require 'pry-byebug'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9], # rows
                 [1, 4, 7], [2, 5, 8], [3, 6, 9], # columns
                 [1, 5, 9], [3, 5, 7]]            # diagonals

PLAYER = 'Player'
COMPUTER = 'Computer'

def prompt(message)
  puts ">> #{message}"
end

# rubocop: disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop: enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square: #{joinor(empty_squares(brd))}:"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Invalid choice."
  end

  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  best_move = find_best_move(brd)
  brd[best_move] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return PLAYER
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return COMPUTER
    end
  end
  nil
end

def joinor(arr, seperator=', ', final_seperator='or')
  if arr.size <= 2
    arr.join(" #{final_seperator} ")
  else
    arr.join(seperator).insert(-3, " #{final_seperator}")
  end
end

def identify_at_risk_squares(brd)
  risk_squares = []
  WINNING_LINES.each do |line|
    if (brd.values_at(*line).count(PLAYER_MARKER) == 2) &&
       (brd.values_at(*line).count(COMPUTER_MARKER) == 0)
      risk_squares << line.select do |square|
        brd[square] == INITIAL_MARKER
      end.shift
    end
  end
  risk_squares
end

def place_piece!(brd, current_player)
  case current_player
  when 'human'
    player_places_piece!(brd)
  when 'computer'
    computer_places_piece!(brd)
  end
end

def alternate_player(current_player)
  case current_player
  when 'human'
    'computer'
  when 'computer'
    'human'
  end
end

def find_best_move(brd)
  best_value = -1000
  best_depth = 10000
  best_move = nil

  (1..9).each do |space|
    if brd[space] == INITIAL_MARKER
      brd[space] = COMPUTER_MARKER
      move_value, depth = mini_max(brd, false, 0)
      brd[space] = INITIAL_MARKER

      if (move_value > best_value) || ((move_value == best_value) && (depth < best_depth))
        best_move = space
        best_depth = depth
        best_value = move_value
      end
    end
  end
  best_move
end

def mini_max(brd, is_max, depth)
  depth += 1

  score = minimizer_or_maximizer_victory(brd)

  return [score, depth] if score == 10

  return [score, depth] if score == -10

  return [0, depth] if board_full?(brd)

  if is_max
    maximizer(brd, is_max, depth)
  else
    minimizer(brd, is_max, depth)
  end
end

def minimizer_or_maximizer_victory(brd)
  winner = 0
  WINNING_LINES.each do |line|
    # binding.pry
    if brd.values_at(*line).count(COMPUTER_MARKER) == 3
      winner = 10
    elsif brd.values_at(*line).count(PLAYER_MARKER) == 3
      winner = -10
    end
  end
  winner
end

def maximizer(brd, is_max, depth)
  best_score = -1000
  mini_max_values = nil
  (1..9).each do |space|
    if brd[space] == INITIAL_MARKER
      brd[space] = COMPUTER_MARKER
      mini_max_values = mini_max(brd, !(is_max), depth)
      best_score = [best_score, mini_max_values[0]].max
      brd[space] = INITIAL_MARKER
    end
  end
  [best_score, mini_max_values[1]]
end

def minimizer(brd, is_max, depth)
  best_score = 1000
  mini_max_values = nil

  (1..9).each do |space|
    if brd[space] == INITIAL_MARKER
      brd[space] = PLAYER_MARKER
      mini_max_values = mini_max(brd, !(is_max), depth)
      best_score = [best_score, mini_max_values[0]].min
      brd[space] = INITIAL_MARKER
    end
  end
  [best_score, mini_max_values[1]]
end

prompt 'Let\'s play Tic-Tac-Toe! First to 5 games wins.'
sleep 2

loop do
  prompt 'Do you want to decide who goes first? (y or n)'
  decide_first = gets.chomp

  if decide_first.downcase.start_with?('y')
    prompt 'Do you want to go first? (y or n)'
    first = gets.chomp
    if first.downcase.start_with?('y')
      prompt "You will start."
      sleep 2
      starting_player = 'human'
    else
      prompt 'Computer will start.'
      sleep 2
      starting_player = 'computer'
    end
  else
    prompt 'Computer is deciding...'
    sleep 2
    turns = ['human', 'computer']
    starting_player = turns.sample.downcase
    prompt "#{starting_player.capitalize} will start."
    sleep 2
  end

  player_score = 0
  computer_score = 0
  loop do
    board = initialize_board
    display_board(board)
    current_player = starting_player

    loop do
      display_board(board)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end

    display_board(board)

    if someone_won?(board)
      case detect_winner(board)
      when PLAYER
        player_score += 1
      when COMPUTER
        computer_score += 1
      end

      prompt "#{detect_winner(board)} won this round. \
Player: #{player_score} Computer: #{computer_score}"
    else
      prompt "You tied this round. \
Player: #{player_score} Computer: #{computer_score}"
    end
    sleep 3
    break if player_score == 5 || computer_score == 5
  end

  if player_score == 5
    prompt 'Congratulations you win!'
  elsif computer_score == 5
    prompt 'Game over. You lose.'
  end

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe. Good bye!"
