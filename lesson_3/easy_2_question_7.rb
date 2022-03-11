flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones1 = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.push("Dino", "Hoppy")
flintstones1.concat(%w(Dino Hoppy))  # concat adds an array rather than one item

p flintstones
p flintstones1
