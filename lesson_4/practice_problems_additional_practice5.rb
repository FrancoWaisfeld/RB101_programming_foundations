flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
index1 = nil


p flintstones.index { |value| value[0, 2] == 'Be' }
