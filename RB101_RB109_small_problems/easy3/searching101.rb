def prompt(string)
  puts ">> #{string}"
end

def get_valid_integer
  Integer(gets)
rescue ArgumentError
  false
end

def valid_input_loop(string)
  loop do
    prompt(string)
    number = get_valid_integer
    return number if number
    puts "Invalid input. Please enter an integer."
  end
end

numbers1to5 = []

numbers1to5 << valid_input_loop("Enter the 1st number:")

numbers1to5 << valid_input_loop("Enter the 2nd number:")

numbers1to5 << valid_input_loop("Enter the 3rd number:")

numbers1to5 << valid_input_loop("Enter the 4th number:")

numbers1to5 << valid_input_loop("Enter the 5th number:")

number6 = valid_input_loop("Enter the last number:")
if numbers1to5.include?(number6)
  prompt "The number #{number6} does appear in #{numbers1to5}."
else
  prompt "The number #{number6} does not appear in #{numbers1to5}."
end
