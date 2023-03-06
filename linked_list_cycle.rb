class ListNode
  attr_accessor :val, :next
  def initialize(val:, next_node:)
    @val = val
    @next = next_node
  end
end

def hasCycle(head)
  return false if head == nil || head.next == nil 
  return true if head.next == head.next.next&.next
  hasCycle(head.next)
end



node5 = ListNode.new(val: 5, next_node: nil)
node4 = ListNode.new(val: 4, next_node: node5)
node3 = ListNode.new(val: 3, next_node: nil)
node2 = ListNode.new(val: 2, next_node: node3)
# node3.next = node2
node1 = ListNode.new(val: 1, next_node: node2)

puts hasCycle(node1)

