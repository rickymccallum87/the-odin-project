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

puts bubble_sort([4,3,78,2,0,2]).inspect
# [0,2,2,3,4,78]