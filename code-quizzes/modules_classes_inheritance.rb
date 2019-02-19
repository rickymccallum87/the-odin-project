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