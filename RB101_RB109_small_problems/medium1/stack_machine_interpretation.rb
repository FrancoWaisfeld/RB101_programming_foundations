def minilang(string)
  register = 0
  stack = []
  values_and_commands = string.split

  values_and_commands.each do |value_or_command|
    case value_or_command
    when "PUSH" then register, stack = push_command(register, stack)
    when "ADD" then register, stack = add_command(register, stack)
    when "SUB" then register, stack = sub_command(register, stack)
    when "MULT" then register, stack = mult_command(register, stack)
    when "DIV" then register, stack = div_command(register, stack)
    when "MOD" then register, stack = mod_command(register, stack)
    when "POP" then register, stack = pop_command(register, stack)
    when "PRINT"
      puts register
    else register = value_or_command.to_i
    end
  end
end

def push_command(register, stack)
  stack << register
  [register, stack]
end

def add_command(register, stack)
  addition = stack.pop
  register += addition
  [register, stack]
end

def sub_command(register, stack)
  subtraction = stack.pop
  register -= subtraction
  [register, stack]
end

def mult_command(register, stack)
  multiplication = stack.pop
  register *= multiplication
  [register, stack]
end

def div_command(register, stack)
  division = stack.pop
  register /= division
  [register, stack]
end

def mod_command(register, stack)
  division = stack.pop
  register = register.remainder(division)
  [register, stack]
end

def pop_command(register, stack)
  register = stack.pop
  [register, stack]
end

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)

minilang('3 PUSH 5 MOD PUSH 7 PUSH 4 PUSH 5 MULT PUSH 3 ADD SUB DIV PRINT')
# 8
