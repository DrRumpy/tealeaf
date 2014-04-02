def shuffle some_array
	recursive_shuffle some_array, []
end

def recursive_shuffle unshuffled_array, shuffled_array
	still_unshuffled = []
	rand = unshuffled_array.sample

	unshuffled_array.each do |word|
		if word == rand
			#do nothing
		else
			still_unshuffled.push(word)
		end
	end

	shuffled_array.push(rand)

	if unshuffled_array.length <= 0
		return shuffled_array
	end


	recursive_shuffle still_unshuffled, shuffled_array
end


foo = ['one', 'two', 'three', 'four', 'five', 'six', 'seven']
puts shuffle foo