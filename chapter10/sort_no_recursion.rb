def sort_array to_sort
	sorted = []
	holder = []

while sorted.length < to_sort.length
		holder.push(to_sort.pop)
		to_sort.each do |i|
			if holder < i
				check = true
			elsif holder > i
				check = false
			end

		if check == true
			sorted.push(holder.pop)
		else
			to_sort.push(holder.pop)
			#need to use array insert method


		
	end
end



puts holder

end

foo = ['zebra', 'tango', 'delta', 'dog', 'mike']
sort_array foo