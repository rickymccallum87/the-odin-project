module Enumerable
  def my_each
    for i in self
      yield i
    end
    self
  end

  def my_each_with_index
    for i in 0..self.length - 1
      yield(self[i], i)
    end
    self
  end

  def my_select
    selected_elements = []
    self.my_each do |i|
      selected_elements << i if yield i
    end
    selected_elements
  end

  def my_all?
    i = 0
    while i < self.length
      return false if not yield(self[i])
      i += 1
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