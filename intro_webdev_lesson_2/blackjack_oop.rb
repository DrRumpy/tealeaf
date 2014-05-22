class Card
  attr_accessor :suit, :value

  def initialize(suit, value)
    @suit = suit
    @value = value
  end

end


class DeckOfCards
  attr_accessor :deck

  def initialize
    @deck = []
    ['S', 'H', 'C', 'D'].each do |suit|
      [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A'].each do |value|
        deck << Card.new(suit, value)
      end
    end
  end

  def shuffle_the_deck!
    @deck.shuffle!
  end

  def deal_a_card!
    @deck.pop
  end
end


class Person
  attr_accessor :hand

  def initialize
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

    while total > 21 && aces
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

deck = DeckOfCards.new
deck.shuffle_the_deck!
player = Person.new
player.hit(deck)
player.hit(deck)
puts player.total
puts player.show_hand