require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

LANGUAGE = 'english'

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(message)
  puts ">> #{message}"
end

def valid_number?(number)
  arr_numbers = number.split("")

  arr_numbers.each do |num|
    break if ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '.', '-'].include?(num) == false
  end
end

def operation_to_message(operation)
  word = case operation
         when '1'
           'Adding'
         when '2'
           'Subtracting'
         when '3'
           'Multiplying'
         when '4'
           'Dividing'
         end
  word
end

prompt(messages('welcome', LANGUAGE))

name = ''
loop do
  name = gets.chomp

  if name.empty?()
    prompt('valid_name')
  else
    break
  end
end

prompt("Hi #{name}!")

loop do # main loop
  number1 = ''
  loop do
    prompt(messages('first_number', LANGUAGE))

    number1 = gets.chomp

    if valid_number?(number1)
      break
    else
      prompt(messages('invalid_number', LANGUAGE))
    end
  end

  number2 = ''
  loop do
    prompt(messages('second_number', LANGUAGE))
    number2 = gets.chomp

    if valid_number?(number2)
      break
    else
      prompt(messages('invalid_number', LANGUAGE))
    end
  end
  operation_prompt = <<-MSG
  What operation would you like to perform?
  [1] add
  [2] subtract
  [3] multiply
  [4] divide?
  MSG
  prompt(operation_prompt)

  operation = ''
  loop do
    operation = gets.chomp

    if %w(1 2 3 4).include?(operation)
      break
    else
      prompt(messages('invalid_option',LANGUAGE))
    end
  end

  prompt("#{operation_to_message(operation)} the two numbers...")

  result = case operation
           when "1"
             number1.to_f + number2.to_f
           when "2"
             number1.to_f - number2.to_f
           when "3"
             number1.to_f * number2.to_f
           when "4"
             number1.to_f / number2.to_f
           end

  prompt("The result is #{result}")

  prompt(messages('another_calculation', LANGUAGE))
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt(messages('thank_you', LANGUAGE))
