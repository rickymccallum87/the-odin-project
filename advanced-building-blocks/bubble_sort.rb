def bubble_sort nums
    prev_nums = []

    (nums.length-1).times do
        nums[0..-2].each_with_index do |num, i|
            next_num = nums[i+1]
            nums[i], nums[i+1] = nums[i+1], nums[i] if num > next_num
        end
        # puts nums.inspect

        break if nums == prev_nums
        prev_nums = nums.dup
    end

    nums
end

def bubble_sort_by list
    i = 0
    while i < list.length - 1
        result = yield(list[i], list[i+1])
        list[i], list[i+1] = list[i+1], list[i] if result > 0
        i += 1
    end
    list
end

def random_array
  Array.new(20) { |a| rand(20) }
end

rand_nums = random_array
puts rand_nums.inspect

puts 'Bubble Sort:'
puts bubble_sort(rand_nums).inspect

puts 'Bubble_Sort_By:'
puts bubble_sort_by(["hi","hello","hey"]) { |left,right| left.length - right.length }.inspect