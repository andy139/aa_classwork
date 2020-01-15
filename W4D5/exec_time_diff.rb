def my_min_slow(arr)


  #Iterate through
  #Each ele we compare it to the rest

  arr.each do |ele|
    return ele if arr.all? { |ele_2| ele_2 >= ele } 
  end


end

def my_min_fast(arr)

  curr_min = arr[0]
  arr.each do |ele|
    curr_min = ele if ele < curr_min
  end

  curr_min
end

def largest_contiguous_subsum(arr)
  all_subarrs = []

  (0...arr.length).each do |i|
    (0...arr.length).each do |j|
      all_subarrs << arr[i..j] if j > i
    end
  end
  all_subarrs.map { |subarr| subarr.sum }.max
end

def largest_contiguous_subsum(arr)
  largest_sum = arr.first
  current_sum = arr.first

  (1...arr.length).each do |i|
    current_sum += arr[i]
    largest_sum = current_sum if current_sum > largest_sum
    current_sum = 0 if current_sum < 0 

  end

  largest_sum
end

p largest_contiguous_subsum([-5, -3, -6, -1, -6, -77])  

def first_anagram?(str1,str2)
  str1.chars.permutation.map { |subarr| subarr.join("") }.include?(str2)
end


def second_anagram?(str1, str2)

  str1.each_char do |char|
    idx = str2.index(char)
    str2[idx] = ""
  end

  str2.empty?
end

# p second_anagram?(str1, str2)

def third_anagram(str1, str2)
  str1.chars.sort == str2.chars.sort
end

def fourth_anagram(str1,str2)

  return false if str1.length != str2.length
  count_1 = Hash.new(0)
  count_2 = Hash.new(0)

  (0...str1.length).each do |i|
    count_1[str1[i]] += 1
    count_2[str2[i]] += 1
  end

  count_1 == count_2

end

def bad_two_sum?(arr,target)
  
  arr.each.with_index do |ele,idx|
    arr.each.with_index do |ele_2,idx_2|
      return true if ele + ele_2 == target && idx != idx_2

    end
  end

  return false

end

# def okay_two_sum?(arr,target)

#   arr.sort!

#   arr.each do |ele|
    
#     result = bsearch(arr,target-ele, ele)
#     return true if !result.nil?
#   end

#   return false

# end

# def bsearch(arr,target)
#   return nil if arr.empty?

#   mid = arr.length/2
#   case target <=> arr[mid]
#   when 0
#     return mid
#   when 1
#     result = bsearch(arr[mid+1..-1], target)
#     return result + mid + 1 if !result.nil?
#   when -1
#     return bsearch(arr[0...mid],target)
#   end

#   return nil

# end

# arr = [0, 1, 5, 7]
# p okay_two_sum?(arr, 6) # => should be true
# p okay_two_sum?(arr, 10) # => should be false


arr = [0, 1, 5, 7]

require "byebug"
def good_two_sum?(arr, target_sum)
  complements = {}
  
  arr.each do |el|
    return true if complements[target_sum - el]
    complements[el] = true
  end

  false
end


def two_sum_indices(arr, target)
  hash = {}

  arr.each.with_index do |num,i|
    complement, j = hash[target-num]
    return [i,j] if j
    
    hash[num] = [num, i]
  end

  hash



end




p two_sum_indices(arr,6)
