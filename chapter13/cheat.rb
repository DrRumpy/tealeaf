class Die

	def initialize
    roll
  end

  def roll
    @number_showing = 1 + rand(6)
  end

  def showing
    @number_showing
  end

  def cheat side
    if side > 0 && side < 7
      @number_showing = side
    end
  end

end

puts Die.new.showing

puts Die.new.cheat 1