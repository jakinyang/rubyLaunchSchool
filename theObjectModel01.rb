# The module

module Speak
  def speak(sound)
    puts sound
  end
end

class GoodDog
  include Speak
end

class HumanBeing
  include Speak
end

sparky = GoodDog.new
sparky.speak("Woof!")
bob = HumanBeing.new
bob.speak("Hello!")

puts "---GoodDog ancestors---"
puts GoodDog.ancestors
puts ""
puts "---HumanBeing ancestors---"
puts HumanBeing.ancestors

# Exercise 1
# A string like "word" is an instance of the String object
word = "word"
puts word

# We can also instantiate objects with classes
module Moo
  def moo(moo)
    moo_string = "I am #{moo}! Hear me moo!"
    puts moo_string
    moo_string
  end
end

# Exercise 2
# A module is like a method and like an object
# A distinct parcel of code (encapsulated behaviour)
# that can be passed to different objects
# to share behaviour and make them polymorphic

module GetMooFromInput
  def getMooInput
    puts "What kind of moo are you?"
    print "> :: "
    moo = $stdin.gets.chomp
    moo
  end
end

module LoudMoo
  include Moo
  include GetMooFromInput

  def loudmoo
    moo = getMooInput
    regular_moo = moo(moo)
    loud_moo = regular_moo.upcase
    puts loud_moo
  end
end

class MooKind
  include Moo
  include LoudMoo
end

edgar_moo = MooKind.new
edgar_moo.loudmoo
