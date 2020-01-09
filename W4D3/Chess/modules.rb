module Stepable
  def moves

  end

  private
  def move_diffs

  end
end





module Slideable
  
  HORIZONTAL_DIRS = [[0,7], [0,6], [0,5], [0,4], [0,3], [0,2], [0,1], [7,0], [6,0], [5,0], [4,0], [3,0], [2,0], [1,0], [0, -7], 
  [0, -6], [0,-5], [0,-4], [0,-3], [0, -2], [0, -1], [-7, 0], [-6, 0], [-5, 0], [-4, 0], [-3, 0], [-2, 0], [-1, 0]]
  DIAGONAL_DIRS = [[1,1], [2,2], [3,3], [4,4], [5,5], [6,6], [7,7], [-1,-1], [-2,-2], [-3,-3], [-4,-4], [-5,-5], [-6,-6], [-7,-7]]

  def horizonal_dirs

  end

  def diagonal_dirs

  end

  def moves
    valid_moves = []
    #Checking if moves is in chess board for Rook and Queen
    if self.is_a?(Rook)
      #This iterates thru all possible moves
      flatten = self.board.rows.flatten
      null_arr = flatten.select { |pieces| pieces.is_a?(NullPiece) }.map(&:pos)
      valid_moves = move_dirs.select { |moves| null_arr.include?(moves) } # Moves where it is valid.

    end
    valid_moves
  end

  private
  def move_dirs
    poss_arr = Array.new
    if self.is_a?(Rook) || self.is_a?(Queen) 
      HORIZONTAL_DIRS.each do |moves|
        start_x = self.pos[0]
        start_y = self.pos[1]
        move_x = moves[0] + start_x
        move_y = moves[1] + start_y
        poss_arr << [move_x, move_y] if move_x.between?(0,7) && move_y.between?(0,7)
      end
    end

    # Possible legal moves
    poss_arr
  end

  def grow_unblocked_movess_in_dir(dx, dy)

  end
end