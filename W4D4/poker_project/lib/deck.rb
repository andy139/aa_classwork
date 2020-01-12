require_relative 'card.rb'

class Deck
  SUITS = ["H","S","C","D"]
  
  def self.add
    cards = []
    (1..13).each do |num|
      SUITS.each do |suit|
        cards << Card.new(num, suit)
      end
    end
    cards
  end

  attr_reader :cards

  def initialize
    @cards = Deck.add
  end
end
