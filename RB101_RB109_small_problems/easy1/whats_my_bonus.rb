def calculate_bonus(salary, give_bonus)
  give_bonus ? salary / 2 : 0
end

p calculate_bonus(1002, true)
