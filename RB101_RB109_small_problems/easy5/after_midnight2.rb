MINUTES_PER_DAY = 1440
MINUTES_PER_HOUR = 60
SECONDS_PER_MINUTES = 60

def time_to_minutes(time)
  hours, minutes = time.split(":").map(&:to_i)
  total_minutes = (hours * MINUTES_PER_HOUR) + minutes
end

def after_midnight(time)
  time_to_minutes(time) % MINUTES_PER_DAY
end

def before_midnight(time)
  (MINUTES_PER_DAY - time_to_minutes(time)) % MINUTES_PER_DAY
end

p after_midnight('00:00')
p before_midnight('00:00')
p after_midnight('12:34')
p before_midnight('12:34')
p after_midnight('24:00')
p before_midnight('24:00')
