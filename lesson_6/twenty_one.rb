require 'pry'
require 'pry-byebug'

LIMIT = 21
DEALER_LIMIT = 17

VALUES = {
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9,
  '10' => 10,
  'Jack' => 10,
  'Queen' => 10,
  'King' => 10,
  'Ace' => [1, 11]
}

def initialize_deck
  suits = ['hearts', 'diamonds', 'spades', 'clubs']
  cards = ['2', '3', '4', '5', '6', '7', '8', '9', '10',
           'Jack', 'Queen', 'King', 'Ace']
  deck = []

  suits.each do |suit|
    cards.each do |card|
      deck << [suit, card]
    end
  end
  deck
end

def deal_initial_cards(deck)
  player = []
  dealer = []

  2.times do |_|
    hit(player, deck)
    hit(dealer, deck)
  end
  [player, dealer]
end

def sample!(arr)
  item = arr.sample
  arr.delete(item)
end

def prompt(str)
  puts ">> #{str}"
end

def display_cards(cards)
  cards.each do |card|
    puts "   - #{card[1]} of #{card[0]}"
  end
end

def score(cards)
  score = 0
  cards.each do |card|
    score +=
      if card[1] == 'Ace'
        if (score + 11) > LIMIT
          VALUES[card[1]][0]
        else
          VALUES[card[1]][1]
        end
      else
        VALUES[card[1]]
      end
  end
  score
end

def hit(cards, deck)
  cards << sample!(deck)
end

def detect_result(player_score, dealer_score)
  if player_score > LIMIT
    :player_bust
  elsif dealer_score > LIMIT
    :dealer_bust
  elsif player_score < dealer_score
    :dealer_won
  elsif player_score > dealer_score
     :player_won
  else
    :tied
  end
end

def winner_message(result)
  prompt case result
       when :player_won, :dealer_bust
         "You won this round!"
       when :dealer_won, :player_bust
         "You lose. The dealer won this round."
       when :tied
         "You tied this round."
       end
end

def play_again?
  prompt "Do you want to play again? (y or n)"
  play_again = gets.chomp
  play_again.downcase.start_with?('y')
end

def display_totals(player_score, dealer_score)
  prompt "Your total is #{player_score}. \
The dealer's total is #{dealer_score}."
end

prompt "Let's play twenty-one!"
sleep 2

dealer_rounds = 0
player_rounds = 0

loop do
  loop do
    prompt "Dealing cards..."
    sleep 2

    deck = initialize_deck
    player_cards, dealer_cards = deal_initial_cards(deck)

    system 'clear'

    prompt "Your cards are:"
    display_cards(player_cards)

    prompt "The dealer's cards are:"
    display_cards(dealer_cards)

    player_score = score(player_cards)
    dealer_score = score(dealer_cards)

    display_totals(player_score, dealer_score)
    sleep 1

    loop do
      prompt "Would you like to 'hit' or 'stay'?"
      hit_or_stay = gets.chomp
      sleep 1
      case hit_or_stay
      when 'hit'
        hit(player_cards, deck)
        system 'clear'

        prompt "Your cards are:"
        display_cards(player_cards)

        player_score = score(player_cards)

        display_totals(player_score, dealer_score)
        sleep 1
        if player_score > LIMIT
          prompt "You busted! Dealer wins."
          sleep 3
          break
        end
      when 'stay'
        prompt "Dealer's turn..."
        sleep 2
        break
      else
        prompt "Invalid answer. Please try again."
        sleep 2
        system 'clear'
      end
    end

    if player_score <= LIMIT
      system 'clear'
      loop do
        system 'clear'
        if dealer_score <= LIMIT
          if dealer_score < DEALER_LIMIT
            hit(dealer_cards, deck)

            prompt "The Dealer hits."
            sleep 1

            prompt "The dealer's cards are:"
            display_cards(dealer_cards)
            sleep 1

            dealer_score = score(dealer_cards)

            display_totals(player_score, dealer_score)
            sleep 3
          else
            prompt "The Dealer stays."
            sleep 2
            break
          end
        else
          prompt "The Dealer busted! You win."
          sleep 2
          break
        end
      end
    end

    system 'clear'

    if player_score <= LIMIT && dealer_score <= LIMIT
      display_totals(player_score, dealer_score)
    end
    
    result = detect_result(player_score, dealer_score)
    winner_message(result)
    sleep 2

    case result
    when :player_won, :dealer_bust
      player_rounds += 1
    when :dealer_won, :player_bust
      dealer_rounds += 1
    end

    prompt "You've won #{player_rounds} rounds. The dealer has won #{dealer_rounds}."
    sleep 2

    if player_rounds >= 5
      prompt "Congradulations you won!"
      break
    elsif dealer_rounds >= 5
      prompt "Game over. Dealer wins."
      break
    end
    
  end
  break unless play_again?
end