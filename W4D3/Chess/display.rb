require 'colorize'
require_relative 'cursor'
require_relative 'board'

class Display

  attr_reader :cursor, :board
  def initialize
    @board = Board.new
    @cursor = Cursor.new([0,0], @board)
  end

  def render
    @cursor.cursor_pos.colorize(:black)
    # @board.rows.map do |row|
    #   row.map.with_index do |ele, i|
    #     if i.even? 
    #       row[i].colorize(:black)
    #     els
    #       row[i].colorize(:white)
    #     end
    #   end
    # end

    


  end

end