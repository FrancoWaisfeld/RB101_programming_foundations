def prompt(string)
  puts ">> #{string}"
end

def calculate_product(number)
  (1..number).inject(:*)
end

def calculate_sum(number)
  (1..number).inject(:+)
end

def get_valid_integer
  Integer(gets)
rescue ArgumentError
  false
end

number = nil

loop do
  prompt "Please enter an integer greater than 0."
  number = get_valid_integer
  break if (number) && (number > 0)
  prompt "Invalid input."
end

loop do
  prompt "Enter sum ('s') or product ('p') to compute all integers between 1 \
and #{number}."
  sum_or_product = gets.chomp

  if sum_or_product.downcase.start_with?('s')
    sum_of_numbers = calculate_sum(number)
    prompt "The sum of all integers between 1 and #{number} is \
#{sum_of_numbers}."
    break
  elsif sum_or_product.downcase.start_with?('p')
    product_of_numbers = calculate_product(number)
    prompt "The product of all integers between 1 and #{number} is \
#{product_of_numbers}."
    break
  else
    prompt "Invalid input."
  end
end
