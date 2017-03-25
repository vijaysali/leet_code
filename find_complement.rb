def find_complement(num)
    return nil if not num.is_a? Fixnum
    flip_bits = num.to_s(2).split("").map {|x| x.to_i == 1? 0 : 1}.join("")
    return flip_bits.to_i(2)
end

puts find_complement(5)
