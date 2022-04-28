def select_fruit(produce)
  fruit = Hash.new

  produce.each do |key, value|
    if value == 'Fruit'
      fruit[key] = value
    end
  end
  
  fruit
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
