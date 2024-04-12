require "byebug"

def water(arr:)
  left = nil

  output = []
  tmp_water = []

  arr.each_with_index do |height, index|
    # No left boundary is set
    if left.nil? && height.positive?
      # Set the left boundary
      left = height
      left_index = index
      byebug
      next
    end

    next if left.nil?

    # Check for right boundary
    if left > 0 && height >= left
      # found the right boundary
      output << tmp_water
      left = height
      tmp_water = []
      byebug
    else
      # add the difference between the left boundary and the height of this element
      tmp_water << left - height
      byebug
    end
  end
  output.flatten.compact.reduce(0) { |num, acc| num + acc }
end

result = water(arr: [0, 1, 0, 2, 1, 0, 1, 3])
puts "#{result}"
