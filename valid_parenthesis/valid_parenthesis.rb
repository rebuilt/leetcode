require "byebug"
# @param {String} s
# @return {Boolean}
HASH = { ")" => "(", "]" => "[", "}" => "{" }
OPENING = "({["
CLOSING = ")}]"
def is_valid(s)
  length = s.length
  return false if length.odd?

  stack = []
  s.split("").each do |parens|
    if OPENING.include? parens
      stack << parens
    else
      return false unless HASH[parens] == stack.pop
    end
  end
  return false unless stack.empty?

  true
end

parens = ["[](){}", "()", "(]", ")(", "{}", "(})", "{{{}}]}", "{[]}"]

parens.each do |s|
  puts is_valid(s)
end
