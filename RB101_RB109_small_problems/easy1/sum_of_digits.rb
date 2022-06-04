def sum(number)
  number.to_s.chars.map(&:to_i).inject(:+)
end

puts sum(105)
