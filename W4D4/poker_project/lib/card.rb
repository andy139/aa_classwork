class Card
  attr_reader :suit, :number, :value

  def initialize(number, suit)
    raise ArgumentError if !(1..13).include?(number) || !["H","S","D","C"].include?(suit)
    @number = number
    @suit = suit
    @value = number.to_s + @suit
  end

  def inspect
    value
  end
end