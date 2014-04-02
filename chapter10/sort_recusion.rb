def sort some_array
	recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
	still_unsorted = []
	small = unsorted_array.pop

	unsorted_array.each do |word|
		if small > word
			still_unsorted.push(small)
			small = word
		else
			still_unsorted.push(word)
		end
	end

	if unsorted_array.length <=0
		return sorted_array
	end

	sorted_array.push(small)
	recursive_sort still_unsorted, sorted_array
end


foo = ['zulu', 'blues', 'smart', 'recursion', 'hard', 'india', 'apple']
puts sort foo