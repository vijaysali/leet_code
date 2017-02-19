# Brute force - With n^2
def two_sum(nums, target)
  nums.each_with_index do |row, index|
    0.upto(nums.size - 1).each do |inner_row|
      return index, inner_row if ((row + nums[inner_row]) == target and (not index == inner_row))
    end
  end
end

# With n times using hashes
def two_sum_with_hash(nums, target)
  h = {}
  nums.each_with_index {|x, index| h[x] = index }
  nums.each_with_index do |row, index|
    diff = target - row
    if h.keys.include? diff and (not h[diff] == index)
      return index, h[diff]
    end
  end
end

puts two_sum([3, 2, 4], 6)
puts two_sum_with_hash([3, 2, 4], 6)
