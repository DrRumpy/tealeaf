module Reliable
  def breakdown
    "You're broken down on the side of the road!"
  end
end

class Vehicle
  @@number_of_vehicles = 0

  attr_accessor :color, :fuel_use, :gas_in_tank, :tank_size, :model, :speed
  attr_reader :year

  def initialize(year, color, model)
    @@number_of_vehicles += 1
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

  def self.show_num_vehices
    @@number_of_vehicles
  end

  def speed_up(speed)
    self.speed += speed.to_i
    "You're going #{speed} KM/h."
  end

  def brake(decrease)
    self.speed -= decrease.to_i
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

  private

  def age_of_vehicle
    time = Time.new
    year = time.year
    age = year - self.year
  end

end

class MyCar < Vehicle
  include Reliable
  
  VIN = 91919191

  def to_s
    "This Car is a #{self.color} #{self.model} made in #{self.year}"
  end

  def age
    "This car is #{age_of_vehicle} years old."
  end

end

class MyTruck < Vehicle
  VIN = 91919192

  def to_s
    "This Truck is a #{self.color} #{self.model} made in #{self.year}"
  end

end


golf = MyCar.new(1995, "Red", "Ford")
puts golf.age