require "byebug"

class PolyTreeNode

    attr_reader :pos, :parent, :children

    def initialize(pos)

        @pos = pos
        @parent = nil
        @children = Array.new

    end

    def parent=(parent)
        self.parent.children.delete(self) if self.parent 

        @parent = parent
    
        parent.children << self if parent && !parent.children.include?(self)
    end

    def add_child(child)
        #making us the parent of child
        child.parent = self

        #add i tour 
    end
    
    def remove_child(child)
        #raise an error if node is not a child
        raise error if child.parent.nil?

        child.parent = nil
    end
    
    def inspect
        self.pos
    end

    def dfs(target)

        return self if self.pos == target
        return nil if self.nil?

        self.children.each do |child|
            result = child.dfs(target)
            return result unless result.nil?
        end

        nil

    end

    def bfs(target)
        queue = [self] 
        
        until queue.empty?
            check_node = queue.shift
            if check_node.pos == target
                return check_node
            else
                queue += check_node.children
            end
        end

        nil
    end


end