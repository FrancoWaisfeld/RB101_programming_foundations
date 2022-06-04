def staggered_case(string, upper=true)
  result = ''
  string.chars.each do |character|
    case upper
    when true
      result << character.upcase
    when false
      result << character.downcase
    end
    upper = !upper
  end
  result
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
p staggered_case('I Love Launch School!', false)
