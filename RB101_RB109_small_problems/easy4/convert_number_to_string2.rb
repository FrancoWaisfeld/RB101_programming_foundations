INTEGERS_TO_STRINGS = {
  0 => '0',
  1 => '1',
  2 => '2',
  3 => '3',
  4 => '4',
  5 => '5',
  6 => '6',
  7 => '7',
  8 => '8',
  9 => '9'
}

def integer_to_string(integer)
  string = ''
  number = integer.abs

  loop do
    number, remainder = number.divmod(10)
    string.prepend(INTEGERS_TO_STRINGS[remainder])
    break if number == 0
  end

  if integer < 0
    string.prepend('-')
  elsif integer > 0
    string.prepend('+')
  end
  string
end

p integer_to_string(4321) == '+4321'
p integer_to_string(-123) == '-123'
p integer_to_string(0) == '0'
