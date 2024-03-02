daylight = [true, false].sample

def time_of_day(daylight)
  if daylight == true
    puts 'It is daytime'
  else
    puts 'It is nighttime'
  end
end
time_of_day(daylight)