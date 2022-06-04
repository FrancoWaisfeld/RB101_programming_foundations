MINUTES_PER_DAY = 1440
MINUTES_PER_HOUR = 60

def convert_minutes_to_0_to_1439(minutes)
  minutes % MINUTES_PER_DAY
end

def time_of_day(total_minutes)
  total_minutes = convert_minutes_to_0_to_1439(total_minutes)
  hours, minutes = total_minutes.divmod(MINUTES_PER_HOUR)
  format("%02d:%02d", hours, minutes)
end

def time_of_day2(total_minutes)
  (Time.new(0, 1, 2) + (total_minutes * 60)).strftime("%A %H:%M")
end

p time_of_day(0)
p time_of_day(-3)
p time_of_day(35)
p time_of_day(-1437)
p time_of_day(3000)
p time_of_day(800)
p time_of_day(-4231)
p time_of_day(1440)

p time_of_day2(0)
p time_of_day2(-3)
p time_of_day2(35)
p time_of_day2(-1437)
p time_of_day2(3000)
p time_of_day2(800)
p time_of_day2(-4231)
