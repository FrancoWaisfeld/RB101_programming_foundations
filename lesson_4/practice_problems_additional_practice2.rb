ages = {
  "Herman" => 32,
  "Lily" => 30,
  "Grandpa" => 5843,
  "Eddie" => 10,
  "Marilyn" => 22,
  "Spot" => 237
}

ages_sum = 0

ages.each { |key, value| ages_sum += value }

p ages_sum
