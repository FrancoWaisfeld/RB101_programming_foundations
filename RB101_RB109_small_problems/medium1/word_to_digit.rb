NUMBERS = {
  'zero'  => '0',
  'one'   => '1',
  'two'   => '2',
  'three' => '3',
  'four'  => '4',
  'five'  => '5',
  'six'   => '6',
  'seven' => '7',
  'eight' => '8',
  'nine'  => '9',
  'ZERO'  => '0',
  'ONE'   => '1',
  'TWO'   => '2',
  'THREE' => '3',
  'FOUR'  => '4',
  'FIVE'  => '5',
  'SIX'   => '6',
  'SEVEN' => '7',
  'EIGHT' => '8',
  'NINE'  => '9'
}

def word_to_digit(string)
  NUMBERS.keys.each { |num| string.gsub!(/\b#{num}\b/, NUMBERS[num]) }
  string
end

p word_to_digit('Please call me at five five five one two three four. Thanks.')
