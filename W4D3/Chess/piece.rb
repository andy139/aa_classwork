require_relative "modules"

class Piece

  attr_reader :pos, :board, :color

  def initialize(color, board, pos)
    @board = board
    @color = :color
    @pos = pos
  end

  def inspect
    "Piece"
  end

  def empty?

  end

  
end

class Knight < Piece
  def initialize(color, board, pos)
    super
  end
  def inspect
    "Knight"
  end

end

class King < Piece
  def initialize(color, board, pos)
    super
  end
  def inspect
    "King"
  end
end

class Queen < Piece
  def initialize(color, board, pos)
    super
  end
  def inspect
    "Queen"
  end

end

class Rook < Piece
  include Slideable

  def initialize(color, board, pos)
    super
  end
  def inspect
    "Rook"
  end

end

class Bishop < Piece
  def initialize(color, board, pos)
    super
  end
  def inspect
    "Bishop"
  end

end

class Pawn < Piece
  def initialize(color, board, pos)
    super
  end
  def inspect
    "Pawn"
  end

end

class NullPiece < Piece

  #include Singleton
  def initialize(color, board, pos)
    super
  end
  def inspect
    "Null"
  end

end
