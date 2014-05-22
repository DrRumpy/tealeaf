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
  
end

# deck = DeckOfCards.new
# deck.shuffle_the_deck!
# card1 = deck.deal_a_card
# card2 = deck.deal_a_card
# puts card1.suit + card1.value.to_s
# puts deck.deck.length