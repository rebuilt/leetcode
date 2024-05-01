def reverse(word, ch)
  # char_index = word.index(character) + 1
  # word[0, char_index].reverse + word[char_index, word.length]
  head = 0

  word.chars.each_with_index do |ele, index|
    next unless ele == ch

    tail = index
    while head < tail
      word[tail], word[head] = word[head], word[tail]

      head += 1
      tail -= 1
    end
    break
  end
  word
end

word = "abcdefd"
character = "d"
puts reverse(word, character)
