

seconds_in_year = 31536000
birth_dates = {}

filename = 'birthdays.txt'

read_string = File.read filename

read_string.each_line do |line| 
  before, middle, after = line.partition(",")
  birth_dates[before] = after.lstrip
end

puts "Please enter a name?"
name = gets.chomp

months = {'Jan' => 1,
          'Feb' => 2,
          'Mar' => 3,
          'Apr' => 4,
          'May' => 5,
          'Jun' => 6,
          'Jul' => 7,
          'Aug' => 8,
          'Sep' => 9,
          'Oct' => 10,
          'Nov' => 11,
          'Dec' => 12}

year_array = birth_dates[name].split
month  = year_array[0]
day    = year_array[1].chop
year   = year_array[2]

years_old = ((Time.new - Time.local(year, month, day)) / seconds_in_year).to_i
current_year = Time.now.year

#have we missed this years bday?
if (Time.local(current_year, month, day) - Time.now) < 0
  current_year += 1
end

puts "#{name}'s next Birthday is #{month} #{day} #{current_year}."
puts "#{name} will #{years_old}! Yay!"