def sort_array to_sort
	sorted = []
	holder = []
	length = to_sort.length

	while true
		check = nil
		holder.push(to_sort.pop)

		to_sort.each do |i|
			if holder[0] < i
				check = true
			elsif holder[0] > i
				check = false
				break
			end
		end

		if check == true
			sorted.push(holder.pop)
		elsif check == false
			to_sort.insert(0, holder.pop)
		end

		if sorted.length == 4
			puts sorted
			puts length
			# I haven't dealt with to_sort being empty and 
			# holder being compared against the now empty
			# array
			break
		end


	end

	
end

foo = ['zebra', 'delta', 'dog', 'tango', 'mike']
sort_array foo