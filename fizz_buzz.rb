def fizz_buzz(n)
  return 1.upto(n).to_a.map {|x| ((x % 3 == 0) and (x % 5 == 0))? "FizzBuzz" : (x % 3 == 0) ? "Fizz" : (x % 5 == 0) ? "Buzz": x.to_s }
end



puts fizz_buzz(15)
puts fizz_buzz(1)
