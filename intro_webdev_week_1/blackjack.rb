# simple method to make puts easier and more noticeable
def say str
	puts "=> #{str}"
end

# get player name and greet player
say "What is your name?"
name = gets.chomp
say "Let's play some Blackjack, #{name}"
puts ''

# create deck of cards
deck = [# hearts
        'AH', 'KH', 'QH', 'JH', 'TH', '9H', '8H',
        '7H', '6H', '5H', '4H', '3H', '2H',
        # clubs
        'AC', 'KC', 'QC', 'JC', 'TC', '9C', '8C',
        '7C', '6C', '5C', '4C', '3C', '2C',
        # diamonds
        'AD', 'KD', 'QD', 'JD', 'TD', '9D', '8D',
        '7D', '6D', '5D', '4D', '3D', '2D',
        # spades
        'AS', 'KS', 'QS', 'JS', 'TS', '9S', '8S',
        '7S', '6S', '5S', '4S', '3S', '2S'
        ]

def card_values(card, hand, value)
  # all the cards that equal 10
  tens = ['K', 'Q', 'J', 'T']

  # check to see if ace should equal '1'
  if card[0] == 'A' && value > 10
    hand << card
    value = value + 1
  elsif card[0] == 'A' && value < 11
    hand << card
    value = value + 11
  # if it's a '10' card, add it to value
  elsif tens.include?(card[0])
    hand << card
    value = value + 10
  # grab 1st index, convert to int and add it to value
  else
    hand << card
    value = value + card[0].to_i
  end

  return value, hand
end

def format_hand hand
  # make cards in hand an easy to use string sending output to player
  show_hand = ''
  hand.each do |h|
    show_hand = show_hand + h.to_s + ' '
  end

  show_hand.rstrip
end


# reset/set dealer and player hands. shuffle the deck
dealer = []
d_value = 0
hand = []
value = 0
shuffled_deck = deck.shuffle
  
# deal the player two cards to start
say "Here's your cards..."
value, hand = card_values(shuffled_deck.pop, hand, value)
value, hand = card_values(shuffled_deck.pop, hand, value)
say "You have " + format_hand(hand) + " and they add up to #{value}"
puts ''

# deal cards to dealer
d_value, dealer = card_values(shuffled_deck.pop, dealer, d_value)
d_value, dealer = card_values(shuffled_deck.pop, dealer, d_value)
say "Dealer's face up card is #{dealer[1]}"
puts ''

# player decides to take a card or stand
while true
  say "Press '1' if you want a card and '2' if you want to stand"
  action = gets.chomp
  if action == '1'
    value, hand = card_values(shuffled_deck.pop, hand, value)
    say "You got a #{hand[-1]}"
    say "Your whole hand is " + format_hand(hand) + " and it adds up to #{value}"
    puts ''
  elsif action == '2'
    say "You stand with " + format_hand(hand) + ", which equals #{value}"
    puts ''
    break
  else
    say "Please enter only a '1' or '2'"
    puts ''
  end

  if value == 21
    say "Blackjack! Congratulations #{name}"
    puts ''
    break
  elsif value > 21
    say "You busted, dealer wins!"
    puts ''
    break
  end
end

# dealer's turn
say "Dealer's hole card is #{dealer[0]}, and total hand is " + format_hand(dealer)
say "This equals #{d_value}"
puts ''
while true
  if d_value > 16
    if d_value > 21
      say "The Dealer busts, you win #{name}"
      puts ''
      break
    elsif d_value > value
      say "The dealer wins! #{d_value} to #{value}"
      puts ''
      break
    elsif d_value == value
      say "It's a push, Dealer hand #{d_value} equals Player hand #{value}"
      puts ''
      break
    elsif value > d_value && value < 22
      say "You win #{name} with #{value} over the Dealer's hand of #{d_value}"
      break
    end
  else
    say "Dealer's hand is less than 17 so the Dealer will draw a card"
    d_value, dealer = card_values(shuffled_deck.pop, dealer, d_value)
    say "Dealer draws a #{dealer[-1]}"
    say "Dealers hand is now " + format_hand(dealer) + " and totals #{d_value}"
  end
end

say "Game over, #{name}. Thanks for playing."