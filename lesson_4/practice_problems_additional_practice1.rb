flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones_hash = {}

flintstones.each_with_index do |value, index|
  flintstones_hash[value] = index
end

p flintstones_hash
