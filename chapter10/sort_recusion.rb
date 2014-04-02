def sort some_array
	recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
	still_unsorted = []
	small = unsorted_array.pop
	clear_small = true

	unsorted_array.each do |word|
		if small >= word
			still_unsorted.push(small)
			clear_small = false
			break
		end
	end

	if clear_small == true
		sorted_array.push(small)
	end

	if sorted_array == 7
		return
	end

puts sorted_array
sort unsorted_array
end


foo = ['zulu', 'blues', 'smart', 'recursion', 'hard', 'india', 'apple']
puts sort foo
