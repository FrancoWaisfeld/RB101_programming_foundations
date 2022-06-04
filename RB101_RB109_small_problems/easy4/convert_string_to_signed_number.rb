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

def string_to_signed_integer(string)
  numbers = string.chars.map { |char| NUMERIC_STRINGS_TO_INTEGERS[char] }
  numbers.delete(nil)

  number = 0
  numbers.each { |num| number = number * 10 + num }
  return number * -1 if string.start_with?('-')
  number
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
