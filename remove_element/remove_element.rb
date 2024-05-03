require "byebug"

def remove_element(nums, val)
  container = []
  nums.each_with_index do |num, index|
    container << num if num != val
    nums[index] = nil
  end
  container.each_with_index do |num, index|
    nums[index] = num
  end
  container.size
end

nums = [0, 1, 2, 2, 3, 0, 4, 2]
val = 2

puts remove_element(nums, val)
puts nums
