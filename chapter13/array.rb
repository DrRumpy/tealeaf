class Array
	def shuffle
    unshuffled_array = self.dup
    self.recursive_shuffle unshuffled_array, []
  end

  def recursive_shuffle unshuffled_array, shuffled_array
    still_unshuffled = []
    random = unshuffled_array.sample

    unshuffled_array.each do |word|
     still_unshuffled.push(word) if word != random
    end

    shuffled_array.push(random)

    if unshuffled_array.length <= 0
      return shuffled_array
    end


    self.recursive_shuffle still_unshuffled, shuffled_array
  end
end


foo = ['one', 'two', 'three', 'four', 'five', 'six', 'seven']
puts foo.shuffle