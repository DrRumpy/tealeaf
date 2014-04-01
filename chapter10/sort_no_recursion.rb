def sort_array to_sort
	sorted = []
	holder = []
	length = to_sort.length

	while true
		check = nil
		holder.push(to_sort.pop)

		to_sort.each do |i|
			if holder[0] <= i
				check = true
			elsif holder[0] > i
				check = false
				break
			end
		end

		if to_sort.length == 0
			sorted.push(holder.pop)
		elsif check == true
			sorted.push(holder.pop)
		elsif check == false
			to_sort.insert(0, holder.pop)
		end

		if sorted.length == length
			break
		end
	end

return sorted
	
end

foo = ['zebra', 'delta', 'dog', 'dog', 'tango', 'mike']
puts sort_array foo