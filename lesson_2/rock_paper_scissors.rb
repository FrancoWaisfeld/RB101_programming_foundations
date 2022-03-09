VALID_CHOICES = {
  'r' => 'rock',
  'p' => 'paper',
  'sc' => 'scissors',
  'l' => 'lizard',
  'sp' => 'spock'
}

def prompt(message)
  puts ">> #{message}"
end

def win?(first, second)
  win_conditions = {
    'r' => ['scissors', 'lizard'],
    'p' => ['rock', 'spock'],
    'sc' => ['paper', 'lizard'],
    'sp' => ['scissors', 'rock'],
    'l' => ['paper', 'spock']
  }
  win_conditions[first].include?(VALID_CHOICES[second])
end

def display_result(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("You lose!")
  else
    prompt("It's a tie!")
  end
end

def play_again?
  prompt("Do you want to play again?")
  again = gets.chomp
  again.downcase.start_with?('y')
end

def display_valid_choices
  prompt("Type the corresponding letter to select your option.")
  print ">> "
  VALID_CHOICES.each do |key, value|
    print ("#{value}: #{key} | ")
  end
  puts()
end

def valid_choice?(choice)
  if VALID_CHOICES.key?(choice)
    true
  else
    prompt("That's not a valid choice.")
  end
end

def update_score(user_choice, computer_choice, score)
  if win?(user_choice, computer_choice)
    score[:user_score] += 1
  elsif win?(computer_choice, user_choice)
    score[:computer_score] += 1
  end
end

def display_score(score)
  prompt("You've won #{score[:user_score]} games. Computer has won #{score[:computer_score]} games.")
end

def display_winner?(score)
  if score[:user_score] == 3
    prompt("Congratulations you win! Final score: #{score[:user_score]} to #{score[:computer_score]}")
  elsif score[:computer_score] == 3
    prompt("Game over. You lose. Final score: #{score[:user_score]} to #{score[:computer_score]}")
  end
end

user_choice = ''

loop do
  score = {user_score: 0, computer_score: 0}
  prompt("Lets play Rock, Paper, Scissors, Lizard, Spock. First to 3 games wins!")
  loop do
    loop do
      display_valid_choices()

      user_choice = gets.chomp
      break if valid_choice?(user_choice)
    end

    computer_choice = VALID_CHOICES.keys.sample

    prompt("You chose: #{VALID_CHOICES[user_choice]} and Computer chose: #{VALID_CHOICES[computer_choice]}")

    display_result(user_choice, computer_choice)

    update_score(user_choice, computer_choice, score)

    display_score(score)

    display_winner?(score)

    break if (score[:user_score] == 3) || (score[:computer_score] == 3)
  end

  break unless play_again?()
end

prompt("Thank you for playing. Goodbye!")
