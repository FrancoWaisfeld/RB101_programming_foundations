def split_by_digits(number)
  number.to_s.chars.map { |num| num.to_i}
end

p split_by_digits(2834913412412312)
