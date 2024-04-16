def trap(heights)
  # Compute in the forward direction
  water_amount_1, last_index = compute(heights)
  # Chop off all values that we've already been able to compute and compute again in the reverse direction
  water_amount_2   = compute(heights[last_index.to_i, heights.size - 1].reverse)[0]

  water_amount_1 + water_amount_2
end

def compute(heights)

  return [0, 0] if heights.size < 2

  left = 0
  right_index = nil
  output = [] of Int32
  tmp_water = [] of Int32

  heights.each_with_index do |height, index|
    # Look for right boundary
    if height >= left
      # found the right boundary
      # add the temporary water to the result
      tmp_water.each do |water|
        output << water
      end

      left = height
      right_index = index
      tmp_water = [] of Int32
      next
    end
    # Anything else might contain water we need to add to the result
    # add the difference between the left boundary and the height of this element
    tmp_water << left - height
  end

  amount_of_water = output.flatten.reduce(0) { |num, acc| num + acc }
  [amount_of_water || 0, right_index || 0]
end

heights = [0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]
puts trap(heights)
