words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

group_anagrams = {}

words.each do |word|
  key = word.split('').sort.join

  if group_anagrams.has_key?(key)
    group_anagrams[key] << word
  else
    group_anagrams[key] = [word]
  end
end

group_anagrams.each_value { |value| p value }
