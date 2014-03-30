while true
	puts 'Type a number between 1 and 3000'
	puts
	number = gets.chomp.to_i
	# simple validation
	if number >= 1 && number <= 3000
		break
	else
		puts 'Type a number between 1 and 3000'
	end
end

def roman_numeral number
	numeral = ''
	# nested arrays, pushing results into 3rd index of each nested array
	numerals = [['m', 1000],
							['d',  500],
							['c',  100],
							['l',   50],
							['x',   10],
							['v',    5],
							['i',    1]]

	numerals.each do |num|
		# means roman numeral is bigger than number - exclude from result
		if (number % num[1]) == number
			num.push(0)
		# can be divided into number, must be included in result
		elsif (number % num[1]) > 0
			num.push(number / num[1])
			# reduces number for each interation!
			number = number % num[1]
			# write result to numeral
			numeral.concat(num[0] * num[2])
		# catches 1000, 2000, 3000 and when zero.
		elsif (number % num[1]) == 0
			num.push(number / num[1])
			number = number % num[1]
			numeral.concat(num[0] * num[2])
		end	
	end

	puts numeral.upcase

end

roman_numeral(number)