def egyptian(rational)
  denominator = 1
  denominators = []
  until rational == 0
    current_value = Rational(1, denominator)
    if current_value <= rational
      rational -= current_value
      denominators << denominator
    end
    denominator += 1
  end
  denominators
end

def unegyptian(array)
  result = Rational(0, 1)
  array.each { |denominator| result += Rational(1, denominator) }
  result
end

p egyptian(Rational(2, 1))
p egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
p egyptian(Rational(3, 1)) 

p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)
