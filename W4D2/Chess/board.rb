class Board

  attr_reader :rows

  def initialize
    @rows = Array.new(8) {Array.new(8, nil)}

    # Placing pawns onto board
    @rows[0].map! { |ele| Piece.new("test", "test", "test" )}
    @rows[1].map! { |ele| Piece.new("test", "test", "test" )}
    @rows[-2].map! { |ele| Piece.new("test", "test", "test" )}
    @rows[-1].map! { |ele| Piece.new("test", "test", "test" )}
  end

  def [](pos)
    x, y = pos
    rows[x][y]
  end

  def []=(pos, val)
    x, y = pos
    rows[x][y] = val
  end

  def move_piece(start_pos, end_pos)

    raise "No piece here" if self[start_pos].nil?
    raise "This position is occupied" if !self[end_pos].nil?
    piece = self[start_pos]
    self[end_pos] = piece
    self[start_pos] = nil



  end
end

class Piece
  def initialize(color, board, pos)
    @board = board
    @color = :color
    @pos = []
  end

  def inspect
    "Piece"
  end

end