require 'date'

def friday_13th(year)
  start_date = Date.new(year)
  end_date = Date.new(year, 12, 31)
  friday_13th_count = 0
  start_date.upto(end_date) do |day|
    friday_13th_count += 1 if day.day == 13 && day.friday?
  end
  friday_13th_count
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
