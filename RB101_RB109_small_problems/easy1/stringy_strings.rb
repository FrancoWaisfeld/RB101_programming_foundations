def stringy(number, starting=1)
  ones_and_zeros = ''
  
  first = '1'
  second = '0'

  if starting == 0
    second = '1'
    first = '0' 
  end

  number.times do |num|
    num.even? ? ones_and_zeros << first : ones_and_zeros << second
  end
  ones_and_zeros
end

puts stringy(10, 0)
