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

  def my_count check=nil
    count = 0
    if check
      self.my_each do |i|
        count += 1 if check == i
      end
      return count
    elsif block_given?
      self.my_each do |i|
        count += 1 if yield i
      end
      return count
    else
      return self.length
    end
  end

  def my_map
    mapped = []
    if block_given?
      self.my_each do |i|
        mapped << (yield i)
      end
      return mapped
    else
      return self.to_enum
    end
  end

  def my_inject memo=0
    self.my_each do |i|
      memo = yield memo, i
      puts memo
    end
    memo
  end
end

def multiply_els arr
  puts arr.inspect
  arr.my_inject(1) { |product, i| product * i }
  puts arr.inspect
end