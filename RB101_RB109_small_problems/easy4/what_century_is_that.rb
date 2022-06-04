def add_century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  
  last_digit = century % 10
  case last_digit
  when 1
    'st'
  when 2
    'nd'
  when 3
    'rd'
  else
    'th'
  end
end

def calculate_century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  "#{century.to_s}#{add_century_suffix(century)}"
end

p calculate_century(2001)
