class Vehicle
  def initialize(input_options)
    @speed = 0
    @direction = 'north'
  end

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


class Car < Vehicle

  def initialize(input_options)
    super
    @make = input_options[:make]
    @model = input_options[:model]
    @fuel = input_options[:fuel]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def initialize(input_options)
    super
    @make = input_options[:make]
    @type = input_options[:type]
    @weight = input_options[:weight]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new(make: 'Nissan', model: 'Rogue', fuel: 30)
bike = Bike.new(make: 'Schwinn', type: 'Mountain', weight: 5)

p car
p bike

car.accelerate
car.turn('south')
p car
car.honk_horn

bike.ring_bell