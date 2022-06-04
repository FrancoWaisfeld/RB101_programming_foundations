SQUARE_FEET_TO_SQUARE_INCHES = 144
SQUARE_FEET_TO_SQUARE_CENTIMETERS = 929.0304

def prompt(string)
  puts ">> #{string}"
end

def get_length_and_width_in_feet
  prompt "Enter the length of the room in feet:"
  length = gets.chomp.to_f
  prompt "Enter the width of the room in feet:"
  width = gets.chomp.to_f
  [length, width]
end

def calculate_area(length, width)
  length * width
end

def convert_square_unit_to_square_unit(square_unit, conversion_factor)
  square_unit * conversion_factor
end

length, width = get_length_and_width_in_feet
area_square_feet = calculate_area(length, width)
area_square_inches = convert_square_unit_to_square_unit(area_square_feet, SQUARE_FEET_TO_SQUARE_INCHES)
area_square_centimeters = convert_square_unit_to_square_unit(area_square_feet, SQUARE_FEET_TO_SQUARE_CENTIMETERS)

prompt "The area of the room is #{area_square_feet.round(2)} square feet \
(#{area_square_inches.round(2)} square inches) \
(#{area_square_centimeters.round(2)} square centimeters)."
