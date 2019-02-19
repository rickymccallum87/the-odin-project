class Dog
  def initialize(name)
    @name = name
  end

  def bark
    'Ruff ruff'
  end
end
p fido = Dog.new('Fido')
p fido.bark

class Insect
  def initialize(age_in_days)
    @age_in_days = age_in_days
  end

  def age_in_years
    @age_in_days / 365
  end
end
p Insect.new(500).age_in_years

class Lamp
  def self.about_me
    "We brighten up people's lives"
  end
end
p Lamp.about_me

class WaterBottle
  def initialize(size)
    @size = size
  end

  def size
    @size
  end
end
p WaterBottle.new(16).size

# class Person
#   def initialize(age)
#     @age = age
#   end

#   def age=(new_age)
#     @age = new_age
#   end

#   def age
#     @age
#   end
# end
# guy = Person.new(20)
# p guy.age
# guy.age = 21
# p guy.age

module MathHelper
  def multiply_by_two(x)
    x * 2
  end
end
class Homework
  include MathHelper
end
h = Homework.new
p h.multiply_by_two(5)

p Array.ancestors

class BaseballPlayer
  def initialize(hits, walks, at_bats)
    @hits = hits
    @walks = walks
    @at_bats = at_bats
  end

  def batting_average
    @hits / @at_bats.to_f
  end

  def on_base_percentage
    (@hits + @walks) / @at_bats.to_f
  end
end
babe_ruth = BaseballPlayer.new(500, 100, 2_000)
p babe_ruth.batting_average
p babe_ruth.on_base_percentage

class Person
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
anon = Person.new('John', 'Smith')
p anon.full_name