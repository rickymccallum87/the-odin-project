module Enumerable
  def my_each
    i = 0
    while i < self.length
      yield(self[i])
      i+= 1
    end
    self
  end

  def my_each_with_index
    i = 0
    while i < self.length
      yield(self[i], i)
      i += 1
    end
    self
  end

  def my_select
    i = 0
    selected_elements = []
    while i < self.length
      result = yield(self[i])
      selected_elements << self[i] if result
      i += 1
    end
    selected_elements
  end
end

nums = Array.new(10) { |n| rand(10) }
puts nums.my_each { |i| print i }.inspect