def bubble_sort nums
    (nums.length-1).times do
        nums[0..-2].each_with_index do |num, i|
            # swap if this greater than next
            next_num = nums[i+1]
            nums[i], nums[i+1] = nums[i+1], nums[i] if num > next_num
        end
        puts nums.inspect
    end

    nums
end

def random_array
  a = Array.new(50) { |a| rand(20) }
  puts a.inspect
  a
end

puts bubble_sort(random_array).inspect