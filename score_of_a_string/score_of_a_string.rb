# frozen_string_literal: true

def score_of_string(string)
  values = string.split("").map(&:ord)
  index = 0
  output = 0
  while index < values.length - 1
    output += (values[index] - values[index + 1]).abs
    index += 1
  end
  output
end

puts score_of_string("hello")
puts score_of_string("zaz")
