puts "What year were you born in?"
year = gets.chomp
puts ''
puts "What month were you born in? (number from 1 to 12)"
month = gets.chomp
puts ''
puts "What day where you born on? (number from 1 to 31)"
day = gets.chomp
puts ''

bday_time = Time.local(year.to_i, month.to_i, day.to_i)
time_since_bday = Time.new - bday_time

num_bdays = time_since_bday.to_i / 31536000

num_bdays.times do |year|
	puts "SPANK!!!"
end