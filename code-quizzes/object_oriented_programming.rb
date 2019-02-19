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