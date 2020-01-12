require 'rspec'
require 'card'
require 'deck'

describe Card do
  subject(:card) { Card.new(11,"H") }

  describe "#initialize" do
    it "given number must be valid" do
      expect{Card.new("11","H")}.to raise_error(ArgumentError)
    end
    it "given suit must be valid" do
      expect{Card.new(11, "Z")}.to raise_error(ArgumentError)
    end
  end

  describe "#number" do
    it "returns a card with a number" do
      expect(card.number).to eq(11)
    end
  end

  describe "#suit" do
    it "returns suit of the card" do
      expect(card.suit).to eq("H")
    end
  end

end

describe Deck do
  subject(:deck) { Deck.new }

  describe "#initialize" do
    

    it "every card should be unique" do
      expect(deck.cards.uniq.length).to eq(52)
    end

    it "everything in deck should be a Card instance" do
      expect(deck.cards.all?{|card|card.is_a?(Card)}).to eq true
    end
  end

  describe "::add" do
    it "returns array of 52 card instances" do
      cards = Deck.add
      expect(cards.length).to eq(52)
    end
  end

end