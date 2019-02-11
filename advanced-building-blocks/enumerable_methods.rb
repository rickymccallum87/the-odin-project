module Enumerable
  def my_each
    i = 0
    while i < self.length
      yield(self[i])
      i+= 1
    end
    self
  end
end

nums = Array.new(10) { |n| rand(10) }
puts nums.my_each { |i| print i }.inspect