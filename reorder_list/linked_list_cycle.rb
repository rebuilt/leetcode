class ListNode
  attr_accessor :val, :next

  def initialize(val:, next_node:)
    @val = val
    @next = next_node
  end
end

def hasCycle(head)
<<<<<<< Updated upstream
  return false if head == nil || head.next == nil 
  return true if head.next == head.next.next&.next
||||||| constructed merge base
  return false if head.next == nil
  return true if node_hash[head&.next] != nil
  node_hash[head&.next] = head&.next
  puts head&.next
  puts head.next
=======
  return nil if head.next.nil?
  return head unless node_hash[head].nil?

  node_hash[head] = head
>>>>>>> Stashed changes
  hasCycle(head.next)
end

<<<<<<< Updated upstream
||||||| constructed merge base
def node_hash
 @node_hash ||= {}
end
=======
def node_hash
  @node_hash ||= {}
end
>>>>>>> Stashed changes

node5 = ListNode.new(val: 5, next_node: nil)
node4 = ListNode.new(val: 4, next_node: node5)
node3 = ListNode.new(val: 3, next_node: nil)
node2 = ListNode.new(val: 2, next_node: node3)
# node3.next = node2
node1 = ListNode.new(val: 1, next_node: node2)

puts hasCycle(node1).val
