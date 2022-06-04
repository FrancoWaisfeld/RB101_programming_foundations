def get_grade(grade1, grade2, grade3)
  average_grade = (grade1 + grade2 + grade3) / 3.0
  case average_grade
  when 90.. then 'A'
  when 80..89  then 'B'
  when 70..79  then 'C'
  when 60..69  then 'D'
  else 'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
