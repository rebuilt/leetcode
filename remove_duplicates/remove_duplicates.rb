require "byebug"
# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  right = 0

  nums.each_with_index do |num, _index|
    if num != nums[right]
      right += 1
      nums[right] = num
    end
  end
  nums
end

nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4]

puts remove_duplicates(nums)
