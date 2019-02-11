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
    self.my_each do |i|
      return false if not yield i
    end
    true
  end

  def my_any?
    self.my_each do |i|
      return true if yield self[i]
    end
    false
  end

  def my_none?
    self.my_each do |i|
      return false if yield self[i]
    end
    true
  end
end