# simple method to make puts easier and more noticeable
def say str
	puts "=> #{str}"
end

# get player name and greet player
say "What is your name?"
name = gets.chomp
say "Let's play some blackjack, #{name}"
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
  elsif card[0] == 'A' && value < 10
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

# puts card_values('2H', ['9H'], 9)

while true
  # reset/set dealer and player hands. shuffle the deck
  dealer = []
  hand = []
  value = 0
  shuffled_deck = deck.shuffle
  
  # deal the player two cards to start
  say "Here's your cards..."
  value, hand = card_values(shuffled_deck.pop, hand, value)
  value, hand = card_values(shuffled_deck.pop, hand, value)
  say "You have a #{hand[0]} and #{hand[1]} they add up to #{value}"
  puts ''

  # deal cards to dealer
  value, dealer = card_values(shuffled_deck.pop, hand, value)
  value, dealer = card_values(shuffled_deck.pop, hand, value)
  say "Dealer's face up care is #{dealer[1]}"
  puts ''

  # player decides to take a card or stand
  say "Press '1' if you want to Stand and '2' if you want a card"
  action = gets.chomp
    if action == 1
      value, hand = card_values(shuffled_deck.pop, hand, value)
      say "You got a #{hand[-1]}"
      say "Your whole hand is #{hand} and it adds up to #{value}"
      puts ''
    else


  break
end
