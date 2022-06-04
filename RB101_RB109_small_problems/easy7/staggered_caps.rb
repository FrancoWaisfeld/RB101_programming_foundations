def staggered_case(string, count_alphanumeric=true)
  result = ''
  upper = true
  selected = /./
  selected = /[A-Za-z]/ if count_alphanumeric == true
  string.chars.each do |character|
    if character =~ selected
      case upper
      when true
        result << character.upcase
      when false
        result << character.downcase
      end
      upper = !upper
    else
      result << character
    end
  end
  result
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers')
p staggered_case('I Love Launch School!', false)
p staggered_case('ignore 77 the 444 numbers', false)
