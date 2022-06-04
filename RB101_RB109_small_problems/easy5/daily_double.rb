def crunch(string)
  no_duplicates = []
  string.chars.each do |character|
    no_duplicates << character if no_duplicates.last != character
  end
  no_duplicates.join
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
