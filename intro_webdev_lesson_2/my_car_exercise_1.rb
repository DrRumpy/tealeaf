class MyCar

  def initialize(year, color, model)
    @year  = year
    @color = color
    @model = model
    @speed = 0
  end

  def speed_up
    @speed += 10
    "You're going #{@speed} KM/h."
  end

  def brake
    @speed -= 10
    "You slow down by 10 KM/h."
  end

  def turn_off
    @speed = 0
    "You park the car and turn it off"
  end

  def how_fast
    "You're going #{@speed} KM/h."
  end

end

car = MyCar.new(1995, "Red", "Ford")

puts car.speed_up
puts car.speed_up
puts car.speed_up

puts car.brake
puts car.how_fast

puts car.turn_off

puts car.how_fast