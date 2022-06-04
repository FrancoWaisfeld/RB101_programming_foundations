def multiply(number1, number2)
  number1 * number2
end

def square(number)
  multiply(number, number)
end

def exponents(base, exponent=2)
  return 1 if (exponent == 0) && (base >= 0)
  return -1 if (exponent == 0) && (base < 0)

  base = base.to_f
  answer = base
  ((exponent.abs) - 1).times { answer = multiply(answer, base) }

  if exponent > 0
    answer
  elsif exponent < 0
    1 / answer
  end
end

p exponents(5, 0) == 1

p exponents(-5, 0) == -1

p exponents(5, -1) == 0.2

p exponents(5, -4) == 0.0016

p exponents(5, 2) == 25

p exponents(5, 4) == 625
