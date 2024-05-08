# frozen_string_literal:  true

require "byebug"
# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  number = (parse_number(l1) + parse_number(l2))
  output = []

  while number > 0
    output << number % 10
    number /= 10
  end
  output
end

def parse_number(node)
  current_value = node.val
  number = 0
  index = 0
  until current_value.nil?
    number += current_value * 10**index
    current_value = node.next&.val
    node = node.next
    index += 1
  end

  number
end

ln3 = ListNode.new(3, nil)
ln2 = ListNode.new(4, ln3)
ln1 = ListNode.new(2, ln2)

ln6 = ListNode.new(4, nil)
ln5 = ListNode.new(6, ln6)
ln4 = ListNode.new(5, ln5)

puts add_two_numbers(ln1, ln4)
