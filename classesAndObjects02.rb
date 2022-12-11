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
