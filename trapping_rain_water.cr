def trap(heights)
  # Compute in the forward direction
  result = compute(heights)
  water_amount_1 : Int32? = result[0] || 0
  last_index = result[1] || 0
  # Chop off all values that we've already been able to compute and compute again in the reverse direction
  water_amount_2 : Int32? = compute(heights[last_index.to_i, heights.size() - 1].reverse)[0] || 0

  water_amount_1 + water_amount_2
end

def compute(heights) 
  left = nil
  right_index = nil
  output =  [] of Int32
  tmp_water = [] of Int32

  # iterate in the forward direction
  heights.each_with_index do |height, index|
    # Look for left boundary if it's nil
    if left.nil? && height.positive?
      # Set the left boundary
      left = height
      next
    end

    next if left.nil?

    # Look for right boundary
    if left > 0 && height >= left
      # found the right boundary
      # add the temporary water to the result
      tmp_water.each do  |item|
        output << item
      end
      left = height
      right_index = index
      tmp_water = Array(Int32).new
      next
    end
    # Anything else might contain water we need to add to the result
    # add the difference between the left boundary and the height of this element
    tmp_water << left - height
  end

  amount_of_water = output.flatten.compact.reduce(0) { |num, acc| num + acc }
  [amount_of_water, right_index]
end


heights = [0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]
puts trap(heights)
