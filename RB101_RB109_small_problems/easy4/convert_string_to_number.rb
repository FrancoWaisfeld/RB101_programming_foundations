NUMERIC_STRINGS_TO_INTEGERS = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9
}

HEXADECIMAL_STRINGS_TO_INTEGERS = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9,
  'A' => 10,
  'B' => 11,
  'C' => 12,
  'D' => 13,
  'E' => 14,
  'F' => 15,  
}

def string_to_integer(string)
  numbers = string.chars.map { |char| NUMERIC_STRINGS_TO_INTEGERS[char] }

  number = 0
  numbers.each { |num| number = number * 10 + num }
  number
end

def hexadecimal_string_to_integer(string)
  numbers = string.chars.map { |char| HEXADECIMAL_STRINGS_TO_INTEGERS[char.upcase] }

  number = 0
  numbers.each { |num| number = number * 16 + num }
  number
end

p string_to_integer('11122')
p string_to_integer('4321')
p string_to_integer('570')

p hexadecimal_string_to_integer('44fd1ad')
