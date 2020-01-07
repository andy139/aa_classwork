require "byebug"
require_relative "./00_tree_node.rb"

class KnightPathFinder
  attr_reader :pos, :graph
  
  def initialize(pos)
    @root_node = PolyTreeNode.new(pos)
    @considered = [pos]
    build_move_tree(@root_node)
  end

  def self.valid_moves(pos)
    #(0,0)
    #return [1,2], [-1,-2]
    #all permutations where x or y doesn't exceed boundaires of board (0, 8=7)
    moves = [[1, 2], [2, 1], [2, -1], [1, -2], [-1, -2], [-2, -1], [-2, 1], [-1, 2]]
    valid_array = []
    moves.each do |sub|
      start_x = pos[0]
      start_y = pos[1]
      move_x = sub[0] + pos[0]
      move_y = sub[1] + pos[1]
  
      valid_array << [move_x, move_y] if move_x.between?(0, 7) && move_y.between?(0, 7)
    end

    valid_array

  end

  def find_path(end_position)

    queue = [root_node]
    until queue.empty?
        check_node = queue.shift
        if check_node.pos == end_position
            return check_node
        else
            queue += check_node.children
            #create trees for the children
            end
        end
    end
    
    nil

  end

  def new_move_positions(pos)
    valids = KnightPathFinder.valid_moves(pos)
      
    new_positions = (valids - @considered)
      
    @considered += new_positions

    new_positions
  end

  def build_move_tree(root_node)
    
    queue = [root_node]


    until queue.empty?
        # debugger
        starting_pos = queue.shift
        new_move_positions(starting_pos.pos).each do |child_pos|
            child_node = PolyTreeNode.new(child_pos)
            starting_pos.add_child(child_node) #add child to root
            child_node.parent=(starting_pos) #add parent to root
        end

        queue += starting_pos.children

    end
  end

end

k = KnightPathFinder.new([0,0])