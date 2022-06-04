def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3].sort
  case
  when angles.sum != 180 || angles[0] <= 0 then :invalid
  when angles.include?(90) then :right
  when angles[2] < 90 then :acute
  else :obtuse
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
