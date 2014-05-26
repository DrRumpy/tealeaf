class Card
  attr_accessor :suit, :value

  def initialize(suit, value)
    @suit = suit
    @value = value
  end

end


class Deck
  attr_accessor :cards

  def initialize
    @cards = []
    ['S', 'H', 'C', 'D'].each do |suit|
      [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A'].each do |value|
        cards << Card.new(suit, value)
      end
    end
  end

  def shuffle_the_cards!
    @cards.shuffle!
  end

  def deal_a_card!
    @cards.pop
  end
end


class Person
  attr_accessor :hand

  def initialize(hand)
    @hand = []
  end

  def hit(deck)
    @hand << deck.deal_a_card!
  end

  def total
    total = 0
    aces = 0
    self.hand.each do |card|
      if ['J', 'Q', 'K'].include?(card.value)
        total += 10
      elsif card.value == 'A'
        total += 11
        aces += 1
      else
        total += card.value
      end
    end

    while total > 21 && aces > 0
      total -= 10
      aces -= 1
    end

    total
  end

  def show_hand
    hand = []
    self.hand.each do |card|
      hand << card.suit + card.value.to_s
    end

    hand
  end

end

class Player < Person
  attr_reader :name

  def initialize(name)
    @name = name
    super(hand)
  end

end

class Dealer < Person
  attr_reader :name

  def initialize
    super(hand)
    @name = "Dealer"
  end

end

def run
  # who is the player?
  puts "Are you ready to play Blackjack?"
  puts "Please type your first name:"
  name = gets.chomp
  puts
  puts "Hi #{name}, let's get started."

  # create Dealer, Player, and cards objects
  deck = Deck.new
  deck.shuffle_the_cards!
  dealer = Dealer.new
  player = Player.new(name)

  # deal some cards to player and dealer
  puts "The Dealer shuffles the deck and starts dealing"
  puts
  player.hit(deck)
  puts "#{player.name} receives #{player.hand} cards"


end

run