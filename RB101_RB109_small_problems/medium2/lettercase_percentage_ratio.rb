LOWERCASE = ('a'..'z').to_a
UPPERCASE = ('A'..'Z').to_a

def letter_percentages(string)
  characters = string.chars
  length = string.length
  counts = {lowercase: 0, uppercase: 0, neither: 0}
  percentages = {}

  characters.each do |character|
    if LOWERCASE.include?(character)
      counts[:lowercase] += 1
    elsif UPPERCASE.include?(character)
      counts[:uppercase] += 1
    else
      counts[:neither] += 1
    end
  end

  calculate_percentages(percentages, counts, length)
  percentages
end

def calculate_percentages(percentages, counts, length)
  counts.each do |key, value| 
    percentages[key] = ((value.to_f / length) * 100).round(1)
  end
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
p letter_percentages('abcdefGHI')
