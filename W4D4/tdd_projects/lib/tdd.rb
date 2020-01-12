class Array

  def my_uniq

    new_arr = Array.new

    self.each do |ele|
      new_arr << ele unless new_arr.include?(ele)
    end

    new_arr

  end

  def two_sum
    positions = Array.new
 
    (0...self.length).each do |i|
      (i...self.length).each do |j|
        positions << [i,j] if self[i] + self[j] == 0 && j > i
      end
    end

    positions
  end
end


def my_transpose(arr)
  raise "not an array" if !arr.is_a?(Array)
  
  new_arr = Array.new(arr[0].length) {Array.new(arr.length)}

  (0...arr.length).each do |i|
    (0...arr[i].length).each do |j|
      new_arr[i][j] = arr[j][i]
    end
  end

  new_arr

  # arr.transpose
end


def stock_picker(arr) #[5, 6, 3, 10, 1]
  hash = Hash.new
  (0...arr.length).each do |i|
    (i...arr.length).each do |j|
      pos = [i,j]
      hash[pos] = arr[j] - arr[i]
    end
  end

  sorted = hash.sort_by {|k,v| v }

  sorted[-1][0]
end