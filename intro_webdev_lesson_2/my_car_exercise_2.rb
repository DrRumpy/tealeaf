class MyCar
  attr_accessor :color
  attr_reader :year

  def initialize(year, color, model)
    @year  = year
    @color = color
    @model = model
    @speed = 0
  end

  def speed_up
    self.speed += 10
    "You're going #{speed} KM/h."
  end

  def brake
    self.speed -= 10
    "You slow down by 10 KM/h."
  end

  def turn_off
    self.speed = 0
    "You park the car and turn it off"
  end

  def how_fast
    "You're going #{speed} KM/h."
  end

end

car = MyCar.new(1995, "Red", "Ford")

puts car.color
car.color = 'Black'
puts car.color
puts car.year