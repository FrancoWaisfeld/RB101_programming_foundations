def prompt(string)
  puts ">> #{string}"
end

prompt "Enter the first number:"
number1 = gets.to_i

prompt "Enter the second number:"
number2 = gets.to_i

prompt "#{number1} + #{number2} = #{number1 + number2}"
prompt "#{number1} - #{number2} = #{number1 - number2}"
prompt "#{number1} * #{number2} = #{number1 * number2}"
prompt "#{number1} / #{number2} = #{number1 / number2}"
prompt "#{number1} % #{number2} = #{number1 % number2}"
prompt "#{number1} ** #{number2} = #{number1 ** number2}"
