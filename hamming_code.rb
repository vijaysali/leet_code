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


puts hamming_distance(1, 4)
