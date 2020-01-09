class Board
  require "colorize"
  require_relative 'piece'

  attr_reader :rows

  def initialize
    @rows = Array.new(8) {Array.new(8, nil)}


    
    # Placing White Team 
    # Pawn Rows
    @rows[1].map! { |ele| Pawn.new(:white, self, "test" )}
    @rows[0][0] = Rook.new(:white, self, [0, 0])
    @rows[0][1] = Knight.new(:white, self, [0, 1])
    @rows[0][2] = Bishop.new(:white, self, [0, 2])
    @rows[0][3] = Queen.new(:white, self, [0, 3])
    @rows[0][4] = King.new(:white, self, [0, 4])
    @rows[0][5] = Bishop.new(:white, self, [0, 5])
    @rows[0][6] = Knight.new(:white, self, [0, 6])
    @rows[0][7] = Rook.new(:white, self, [0, 7])
    
    # Placing Black Team
    @rows[-2].map! { |ele| Pawn.new(:black, self, "test" )}
    @rows[-1][0] = Rook.new(:black, self, [7, 0])
    @rows[-1][1] = Knight.new(:black, self, [7, 1])
    @rows[-1][2] = Bishop.new(:black, self, [7, 2])
    @rows[-1][3] = Queen.new(:black, self, [7, 3])
    @rows[-1][4] = King.new(:black, self, [7, 4])
    @rows[-1][5] = Bishop.new(:black, self, [7, 5])
    @rows[-1][6] = Knight.new(:black, self, [7, 6])
    @rows[-1][7] = Rook.new(:black, self, [7, 7])

    @rows.each do |row|
      row.map! do |ele|
        if ele == nil
          NullPiece.new(:orange, self, "test")
        else
          ele
        end
      end
    end
  end

  def [](pos)
    x, y = pos
    rows[x][y]
  end

  def []=(pos, val)
    x, y = pos
    rows[x][y] = val
  end
  require "byebug"


  def move_piece(start_pos, end_pos)

    raise "No piece here" if self[start_pos].is_a?(NullPiece)
    raise "This position is occupied" if !self[end_pos].is_a?(NullPiece)
    #debugger
    piece = self[start_pos]
    piece_end = self[end_pos]
    
    self[end_pos] = piece
    self[start_pos] = piece_end

  end

  def valid_pos?(pos)
    x, y = pos
    return true if self[pos] == nil
    false
  end
end

b = Board.new
b.move_piece([1,0],[2,0])
b