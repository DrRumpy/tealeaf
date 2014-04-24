class Array
	def shuffle some_array
    self.recursive_shuffle []
  end

  def recursive_shuffle shuffled_array
    still_unshuffled = []
    rand = self.sample

    self.each do |word|
      if word == rand
        #do nothing
      else
        still_unshuffled.push(word)
      end
    end

    shuffled_array.push(rand)

    if self.length <= 0
      return shuffled_array
    end


    recursive_shuffle still_unshuffled, shuffled_array
  end
end


foo = ['one', 'two', 'three', 'four', 'five', 'six', 'seven']
puts foo.shuffle foo