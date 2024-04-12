require 'byebug'
class ListNode
  attr_accessor :val, :next_node

  def initialize(val = 0, next_node = nil)
    @val = val
    @next_node = next_node
  end
end

def reorder_list(head)
  return nil if head.nil?

  odds = []
  evens = []

  array = []
  tmp = head
  while tmp
    array.push(tmp)
    tmp = tmp.next_node
  end
  array_size = array.size / 2
  array.each_slice(array_size) do |even, odd|
    evens << even
    odds << odd
  end
  odds = odds.flatten.reverse
  in_order = evens.flatten.zip(odds).flatten
  index = 0
  while index < in_order.length - 2
    in_order[index].next = in_order[index + 1]
    index += 1
  end
end

node5 = ListNode.new(val: 5, next_node: nil)
node4 = ListNode.new(val: 4, next_node: node5)
node3 = ListNode.new(val: 3, next_node: node4)
node2 = ListNode.new(val: 2, next_node: node3)
node1 = ListNode.new(val: 1, next_node: node2)

reorder_list(node1)
