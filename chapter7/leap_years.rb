puts 'Enter a starting year:'
start = gets.chomp.to_i
puts 'Enter an ending year:'
finish = gets.chomp.to_i

puts
year = start
while year <= finish
	if year % 4 == 0
		if year % 100 == 0 && year % 400 == 0
		puts year.to_s + ' is a leap year'
		end
    elsif year % 4 == 0 && year % 100 != 0
    	puts year.to_s + ' is a leap year'
    end
	year = year + 1
end