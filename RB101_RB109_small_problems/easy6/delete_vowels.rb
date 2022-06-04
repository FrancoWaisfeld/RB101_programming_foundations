CONSTANTS = 'bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ'

def remove_vowels(array_of_strings)
  constants_only_words = []
  array_of_strings.each do |string|
    constants_only = ''
    string.each_char do |character|
      constants_only << character if CONSTANTS.include?(character)
    end
    constants_only_words << constants_only
  end
  constants_only_words
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
