module Driveable
  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Vehicle 
  def initialize
    @speed = 0
    @direction = 'north'
  end
end

class Car < Vehicle
  include Driveable

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  include Driveable

  def ring_bell
    puts "Ring ring!"
  end
end

bike = Bike.new
car = Car.new

p car.accelerate
p car.accelerate
p car.brake

car.honk_horn