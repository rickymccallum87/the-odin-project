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