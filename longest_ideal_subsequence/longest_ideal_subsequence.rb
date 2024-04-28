require "byebug"
module LIS
  def self.longest_ideal_string(s, k)
    output = []

    length = s.length
    i = length
    while i > 1
      substring = s[length - i, length]
      output << lis(substring, k)
      i -= 1
    end
    output.max
  end

  def self.lis(s, k)
    output = 1
    last_byte = nil
    s.each_byte.each_with_index do |byte, index|
      next last_byte = byte if index.zero?

      next unless (byte - last_byte).abs <= k

      output += 1
      last_byte = byte
    end
    output
  end
end

# puts LIS.longest_ideal_string("acfgbd", 2)
# puts LIS.longest_ideal_string("abcd", 3)
# puts LIS.longest_ideal_string("jxhwaysa", 14)
# puts LIS.longest_ideal_string("pvjcci", 4)
puts LIS.longest_ideal_string("eduktdb", 15)
