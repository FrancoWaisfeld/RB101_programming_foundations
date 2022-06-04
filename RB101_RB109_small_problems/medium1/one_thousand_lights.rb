def set_lights(number)
  lights = {}
  number.times { |num| lights[num + 1] = false }
  lights
end

def toggle_lights(lights, skipper)
  lights.each_key { |key| (lights[key] = !lights[key]) if key % skipper == 0 }
  lights
end

def which_lights_are_on(lights)
  turned_on_lights = []
  lights.each { |key, value| turned_on_lights << key if value == true }
  turned_on_lights
end


def switch_lights(number)
  lights = set_lights(number)
  skipper = 1
  number.times do
      lights = toggle_lights(lights, skipper)
      skipper += 1
  end
  which_lights_are_on(lights)
end

p switch_lights(5)
p switch_lights(10)
p switch_lights(1000)
