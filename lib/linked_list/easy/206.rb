require_relative '../../../utils/listnode.rb'
# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
  dummy_head = ListNode.new(0)
  current = head
  
  while current
    next_node = current.next
    current.next = dummy_head.next
    dummy_head.next = current
    current = next_node
  end
  
  dummy_head.next
end
