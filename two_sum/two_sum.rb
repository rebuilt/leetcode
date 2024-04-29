require "byebug"
module TwoSum
  def self.two_sum(nums, target)
    looking_for = {}
    nums.each_with_index do |num, index|
      return [index, looking_for[num]] unless looking_for[num].nil?

      looking_for[target - num] = index
    end
  end
end

puts TwoSum.two_sum([2, 7, 11, 15], 9) # 0,1
puts TwoSum.two_sum([3, 2, 4], 6) # 1,2
puts TwoSum.two_sum([3, 3], 6) # 0,1
