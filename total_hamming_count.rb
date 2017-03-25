def append_zero(val, diff)
  1.upto(diff).map {|x| val.unshift(0) }
  return val
end

def hamming_distance(x, y)
  raise "Error provide valid input to method" if x.nil? or y.nil?
  x = x.to_s(2).split("").map(&:to_i)
  y = y.to_s(2).split("").map(&:to_i)

  if x.size > y.size
    y = append_zero(y, (x.size - y.size))
  else
    x = append_zero(x, (y.size - x.size))
  end
  x.each_with_index.map {|value, index| value if not value == y[index] }.compact.count
end

array = [4, 14, 2]
def total_hamming_distance(nums)
  return 0 if nums.empty? or nums.count == 1
  return nil if nums.count >= (10 ** 4)
  nums.map {|x| return nil if x >= (10 ** 9) }
  nums.combination(2).to_a.map {|x| hamming_distance(x[0], x[1]) }.compact.inject(:+) if nums.count >= 2
end

puts total_hamming_distance(array)
