module Enumerable
  def my_each
    0.upto self.length-1 do |i|
      yield self[i]
    end
    self
  end

  def my_each_with_index
    0.upto self.length-1 do |i|
      yield self[i], i
    end
    self
  end

  def my_select
    selected = []
    self.my_each do |i|
      selected << i if yield i
    end
    selected
  end

  def my_all?
    for i in self
      return false if not yield i
    end
    true
  end

  def my_any?
    i = 0
    while i < self.length
      return true if yield(self[i])
      i += 1
    end
    false
  end

  def my_none?
    i = 0
    while i < self.length
      return false if yield(self[i])
      i += 1
    end
    true
  end
end