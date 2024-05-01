require "byebug"

def is_palendrome(x)
  x = x.to_s
  (x.length / 2).times do |index|
    result = x[index] == x[-index - 1]
    return false unless result
  end
  true
end

target = -121
puts is_palendrome(target)
