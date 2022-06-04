def multisum(integer)
  (1..integer).inject(0) do |sum, number|
    number % 3 == 0 || number % 5 == 0 ? sum += number : sum += 0
  end
end

p multisum(3)
p multisum(5)
p multisum(10)
p multisum(1000)
