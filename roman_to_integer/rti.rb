def roman_to_int(s)
  stack = []
  map = { "I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000 }
  s.split("").each do |ch|
  end
end

romans = %w[III LVIII MCMXCIV]

romans.each do |roman|
  puts roman_to_int(roman)
end
