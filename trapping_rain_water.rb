# @param {Integer[]} height
# @return {Integer}
def trap(heights)
  # Compute in the forward direction
  water_amount_1, last_index = compute(heights)
  # Compute in the reverse direction
  water_amount_2,  = compute(heights[last_index, heights.length].reverse)

  water_amount_1 + water_amount_2
end

def compute(heights)
  return [0, 0] if heights.length < 2

  left = 0
  last_index = nil
  output = []
  tmp_water = []

  heights.each_with_index do |height, index|
    # Look for right boundary
    if height >= left
      # found the right boundary
      # add the temporary water to the result
      output << tmp_water
      left = height
      last_index = index
      tmp_water = []
      next
    end
    # Anything else might contain water we need to add to the result
    # add the difference between the left boundary and the height of this element
    tmp_water << left - height
  end

  amount_of_water = output.flatten.reduce(0) { |num, acc| num + acc }
  [amount_of_water, last_index || 0]
end

heights = [0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]
puts trap(heights)
