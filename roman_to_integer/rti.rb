require "byebug"
def roman_to_int(s)
  stack = []
  map = { "I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000 }
  output = 0
  s.split("").reverse.each do |ch|
    value = map[ch]
    stack << value
  end

  last_max = 0
  stack.each do |num|
    last_max = num if num > last_max

    if num == last_max
      output += num
    else
      output -= num
    end
  end
  output
end

# romans = %w[III LVIII MCMXCIV]
romans = %w[MCMXCIV]

romans.each do |roman|
  puts roman_to_int(roman)
end
