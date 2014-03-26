puts 'Enter a starting start:'
start = gets.chomp.to_i
puts 'Enter an ending start:'
finish = gets.chomp.to_i

puts
while start <= finish
	if start % 4 == 0
		if start % 100 == 0 && start % 400 == 0
			puts start.to_s + ' is a leap start'
    	elsif start % 4 == 0 && start % 100 != 0
    		puts start.to_s + ' is a leap start'
    	end
    end
	start = start + 1
end