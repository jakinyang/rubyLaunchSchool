module Speak
  def speak(string)
    puts string
  end
end

class GoodDog
  include Speak
  attr_accessor :name, :weight, :height

  def initialize(name, weight, height)
    @name = name
    @weight = weight
    @height = height
  end

  def set_Info(name, weight, height)
    self.name = name
    self.weight = weight
    self.height = height
  end

  def get_Info
    "#{name}'s weight is #{weight} and height is #{height}"
  end

  def sayname
    speak(name)
  end
end

sparky = GoodDog.new("Sparky", 100, 203)
sparky.speak("Woof!")
sparky.sayname
puts sparky.name
sparky.name = ("Spartacus")
puts sparky.name
sparky.set_Info("SpartaMoo", "100lbs", "133cm")
puts sparky.get_Info

moop = GoodDog.new("Moop", 149, 719)
moop.speak("Woof!")
moop.sayname
puts moop.name
moop.name = ("Moopasaurus")
puts moop.name
moop.set_Info("MoopMoo", "98lbs", "145cm")
puts moop.get_Info

# Exercise 1

class MyCar
  attr_reader :speed, :year, :max_range, :fuel_tank
  attr_accessor :color

  def initialize(year, color, model, max_range, fuel_tank)
    @year = year
    @color = color
    @model = model
    @speed = 0
    @max_range = max_range
    @fuel_tank = fuel_tank
  end

  def self.mileage
    mileage = max_range / fuel_tank
  end

  def to_s
    puts "MyCar class called with #{year}, #{color}, #{model} with #{mileage}"
  end

  def accelerate
    self.speed += 5
  end

  def brake
    if speed >= 5
      self.speed -= 5
    elsif speed < 5 && speed > 0
      self.speed -= 1
    else
      shutoff
    end
  end

  def shutoff
    self.speed = 0
  end

  def spraypaint(c)
    self.color = c
    puts "You painted the car #{c} and now the car is #{color}"
  end
end
