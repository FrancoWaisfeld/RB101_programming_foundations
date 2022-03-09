# ask user if they want to calculate a mortgage
# or car loan and store the response in a variable
# check if input is valid
# ask user for loan amount and store in a variable
# check if input is valid
# ask user for APR and store in a variable
# check if input is valid
# ask user for loan duration in months and store in a variable
# check if input is valid
# calculate the monthly payment and print it to the user
# How to calculate monthly payment:
# monthly payment = loan_amount *
# ((APR / 12) / (1 - (1 + ((APR / 12) ** -loan_duration_in_months))))

def prompt(text)
  puts ">> #{text}"
end

def valid_number
  loop do
    number = gets.chomp
    number.delete!(',')
    number_array = number.split('')
    valid_characters = ('0'..'9').to_a.push('.')

    number_array.each do |character|
      if valid_characters.include?(character) == false
        prompt("Please enter a valid number.")
        break
      else
        return number
      end
    end
  end
end

prompt("Hello, welcome to Franco's mortgage and car loan calculator.")

loop do
  prompt("Would you like to calculate your [1] monthly mortgage payment
          or [2] monthly car loan payment?")

  loan_type = ''

  loop do
    loan_selection = gets.chomp

    if %w(1 2).include?(loan_selection)
      if loan_selection == '1'
        loan_type = "monthly mortgage payment"
      else
        loan_type = "car loan payment"
      end
    else
      prompt("Invalid input. Please enter '1' or '2'")
    end
  end

  prompt("What is the loan amount?")
  loan_amount = valid_number.to_f

  prompt("What is the annual percentage rate?")
  annual_percentage_rate_as_decimal = valid_number.to_f / 100

  prompt("What is the loan duration in months?")
  loan_duration_in_months = valid_number.to_f

  monthly_interest_rate_as_decimal = annual_percentage_rate_as_decimal / 12

  monthly_payment = loan_amount * (monthly_interest_rate_as_decimal / (1 -
    (1 + monthly_interest_rate_as_decimal)**(loan_duration_in_months * -1)))

  prompt("Your #{loan_type} is #{monthly_payment}.")

  prompt("Type 'y' to calculate another loan.")
  go_again = gets.chomp
  break unless go_again.downcase == 'y'
end

prompt("Goodbye!")
