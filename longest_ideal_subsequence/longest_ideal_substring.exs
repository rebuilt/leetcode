
defmodule LIS do
  def longest_ideal_string(s, k) do
    index = 0
    max = 0

    for   index < s.length do 
      result = lis(s[index, s.length], k, 0, 0, nil)
      index += 1
      if result > max do
        max = result 
      end
    end
    max
  end

  # def lis(word, k, index, acc, last_byte) do
  #   return acc if index >= word.length

  #   last_byte = word[index].ord if last_byte.nil?

  #   result1 = lis(word, k, index + 1, acc, last_byte)
  #   result2 = 0

  #   if (last_byte - word[index].ord).abs <= k do
  #   result2 = lis(word, k, index + 1, acc + 1, word[index].ord) 
  #   end

  #   [result1, result2].max
  # end
end

puts LIS.longest_ideal_string("acfgbd", 2) # 4
puts LIS.longest_ideal_string("abcd", 3) # 4
puts LIS.longest_ideal_string("jxhwaysa", 14) # 5
puts LIS.longest_ideal_string("pvjcci", 4) # 2
puts LIS.longest_ideal_string("eduktdb", 15)
puts LIS.longest_ideal_string("dyyonfvzsretqxucmavxegvlnnjubqnwrhwikmnnrpzdovjxqdsatwzpdjdsneyqvtvorlwbkb", 15)
