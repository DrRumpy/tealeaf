def bottles_beer number
	if number < 0 # No negative numbers.
		return 'You cannot have a negative number of beer bottles on the wall.'
	end
	if number == 0
		return 'zero'
	end
	if number > 9999
		return 'There is no way to fit any more bottles of beer on the wall!'
	end

	# No more special cases! No more returns!
	num_string = '' # This is the string we will return.

	ones_place = ['one', 			'two', 			'three',
								'four', 		'five', 		'six',
								'seven', 		'eight', 		'nine']
	tens_place = ['ten', 			'twenty', 	'thirty',
								'forty', 		'fifty', 		'sixty',
								'seventy', 	'eighty', 	'ninety']
	teenagers = ['eleven', 		'twelve', 	'thirteen',
							 'fourteen', 	'fifteen', 	'sixteen',
							 'seventeen', 'eighteen', 'nineteen']

	# "left" is how much of the number
	# we still have left to write out.
	# "write" is the part we are
	# writing out right now.
	# write and left...get it? :)
	left = number
	write = left/1000 				# How many hundreds left?
	left = left - write*1000 # Subtract off those hundreds.

	if write > 0
		# Now here's the recursion:
		thousands = bottles_beer write
		num_string = num_string + thousands + ' thousand'
		if left > 0
			# So we don't write 'two thousandfive hundred'...
			num_string = num_string + ' '
		end
	end

	write = left/100 				# How many hundreds left?
	left = left - write*100 # Subtract off those hundreds.

	if write > 0
		# Now here's the recursion:
		hundreds = bottles_beer write
		num_string = num_string + hundreds + ' hundred'
		if left > 0
			# So we don't write 'two hundredfifty-one'...
			num_string = num_string + ' '
		end
	end
	
	write = left/10 # How many tens left?
	left = left - write*10 # Subtract off those tens.

	if write > 0
		if ((write == 1) and (left > 0))
			# Since we can't write "tenty-two" instead of
			# "twelve", we have to make a special exception
			# for these.
			num_string = num_string + teenagers[left-1]
			# The "-1" is because teenagers[3] is
			# 'fourteen', not 'thirteen'.
			# Since we took care of the digit in the
			# ones place already, we have nothing left to write.
			left = 0
		else
			num_string = num_string + tens_place[write-1]
			# The "-1" is because tens_place[3] is
			# 'forty', not 'thirty'.
		end
		if left > 0
			# So we don't write 'sixtyfour'...
			num_string = num_string + '-'
		end
	end

	write = left # How many ones left to write out?
	left = 0 # Subtract off those ones.
	
	if write > 0
		num_string = num_string + ones_place[write-1]
		# The "-1" is because ones_place[3] is
		# 'four', not 'three'.
	end

	# Now we just return "num_string"...
	num_string

end

bottles_of_beer = 5
current_bottles = bottles_of_beer
while current_bottles > 2
	puts bottles_beer(current_bottles) + ' bottles of beer on the wall, ' 
	puts bottles_beer(current_bottles) + ' bottles of beer!'
	puts 'take one down, pass it around'
	current_bottles = current_bottles - 1
	puts bottles_beer(current_bottles) + ' bottles of beer on the wall!'
	puts ''
end

puts 'one bottle of beer on the wall, '
puts 'one bottle of beer!'
puts 'take one down, pass it around'
puts 'no bottles of beer on the wall!'