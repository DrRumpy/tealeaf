birth_dates = {}

filename = 'birthdays.txt'

read_string = File.read filename

read_string.each_line do |line| 
  before, middle, after = line.partition(",")
  birth_dates[before] = after.lstrip
end

puts birth_dates

