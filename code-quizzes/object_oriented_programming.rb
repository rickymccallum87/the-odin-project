p String.new('road trip')

p Array.new.push('fun', 'games')

class Animal
end
p fido = Animal.new

class Dog
  def speak
    'ruff ruff'
  end
end
p spot = Dog.new
p spot.speak

class Penguin
  def looks
    'We are cute!'
  end
end
p Penguin.new.looks

class Fish
  def self.general_overview
    'Fish are animals that live in the sea'
  end
end
p Fish.general_overview

class Calculator
  def self.add(number, exponent)
    number + exponent
  end
end
p Calculator.add(1, 2)

class Celsius
  def initialize(temperature)
    @temperature = temperature
  end

  def to_fahrenheit
    @temperature * 1.8 + 32
  end
end
p Celsius.new(100).to_fahrenheit
