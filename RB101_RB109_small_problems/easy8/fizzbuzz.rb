def fizzbuzz_value(number)
  if (number % 3 == 0) && (number % 5 == 0)
    "FizzBuzz"
  elsif number % 3 == 0
    "Fizz"
  elsif number % 5 == 0
    "Buzz"
  else
    number
  end
end

def fizzbuzz(number1, number2)
  numbers = (number1..number2).to_a
  puts (numbers.map { |number| fizzbuzz_value(number) }.join(", "))
end

fizzbuzz(1, 15)
