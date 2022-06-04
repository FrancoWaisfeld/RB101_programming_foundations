def buy_fruits(groceries)
  fruits = []
  groceries.each do |fruit, quantity|
    quantity.times { fruits << fruit }
  end
  fruits
end

p buy_fruits([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
