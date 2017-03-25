def find_words(words)
  hash_key = {
    row1: ["q", "w", "e", "r", "t", "y", "u", "i", "o", "p"],
    row2: ["a", "s", "d", "f", "g", "h", "j", "k", "l"],
    row3: ["z", "x", "c", "v", "b", "n", "m"]
  }
  result = []
  words.each do |word|
    flag = true
    row = hash_key.collect {|k, v| k if v.include?(word[0].downcase) }.compact.first
    word.chars.each {|x|
      if not hash_key[row].include? x.downcase
        flag = false
        break
      end
    }
    result << word if flag == true
  end
  return result
end


puts find_words(["Hello", "Alaska", "dad", "peace"])
