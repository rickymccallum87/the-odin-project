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

class Person
  def initialize(age)
    @age = age
  end

  def age=(new_age)
    @age = new_age
  end

  def age
    @age
  end
end
guy = Person.new(20)
p guy.age
guy.age = 21
p guy.age