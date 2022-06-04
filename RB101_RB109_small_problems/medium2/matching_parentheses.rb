def balanced?(string)
  parenthesis = 0
  brackets = 0
  curly_brackets = 0
  single_quote = 0
  double_quote = 0
  string.chars do |character|
    case character
    when '(' then parenthesis += 1
    when ')' then parenthesis -= 1
    when '[' then brackets += 1
    when ']' then brackets -= 1
    when '{' then brackets += 1
    when '}' then brackets -= 1
    when "'" then single_quote += 1
    when '"' then double_quote += 1
    end
    return false if parenthesis < 0 || brackets < 0 || curly_brackets < 0
  end
  (parenthesis == 0 && brackets == 0 && curly_brackets == 0 &&
    single_quote.even? && double_quote.even?)
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?("('this'is a [big] {}{}{}mes{s})") == true
