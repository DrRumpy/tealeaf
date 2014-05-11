class Vehicle

  attr_accessor :color, :fuel_use, :gas_in_tank, :tank_size, :model, :speed
  attr_reader :year

  def initialize(year, color, model)
    @year  = year
    self.color = color
    self.model = model
    self.speed = 0
    self.tank_size = 56 # litres of fuel
    self.gas_in_tank = @tank_size
    self.fuel_use = 7   # litres per 100 km
  end

  def self.mileage(distance, fuel_use, gas_in_tank, car)
    fuel_used = (distance.to_i * fuel_use) / 100
    car.gas_in_tank -= fuel_used
    "You traveled #{distance} and got #{car.fuel_use} per 100 KMs " + 
    "of fuel consumption."
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

  def spray_paint(color)
    self.color = color
    "The new #{color} paint job looks great!"
  end

  def to_s
    "This vehicle is from #{self.year} and it's #{self.color}. The manufacturer is #{self.model}"
  end

end

class MyCar < Vehicle
  VIN = 91919191

  def show_VIN
    VIN
  end

end

class MyTruck < Vehicle
  VIN = 91919192

  def show_VIN
    VIN
  end

end

car = MyCar.new(1995, "Red", "Ford")
puts car.show_VIN
puts car
truck = MyTruck.new(2011, "Blue", "Chevy")
puts truck.show_VIN
puts truck