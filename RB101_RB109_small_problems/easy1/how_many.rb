def count_occurrences(array)
  occurrences = {}
  array.map { |item| item.downcase! }
  array.uniq.each { |item| occurrences[item] = array.count(item) }
  occurrences.each { |key, value| puts "#{key} => #{value}" }
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv'
]

count_occurrences(vehicles)
