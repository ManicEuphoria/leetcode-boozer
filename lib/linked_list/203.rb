# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end
# @param {ListNode} head
# @param {Integer} val
# @return {ListNode}
def remove_elements(head, val)
  dummy = ListNode.new(nil, head)
  current = dummy
  while current.next
    if current.next.val == val
      current.next = current.next.next
    else
      current = current.next
    end
  end
  dummy.next
end

testcase = [1,2,6,3,4,5,6]

def new_listnode(testcase)
  head = ListNode.new(testcase[0])
  i = 1
  dummy = head
  while i <= testcase.length - 1
    dummy.next = ListNode.new(testcase[i])
    dummy = dummy.next
    i += 1
  end
  head
end

head = new_listnode(testcase)




p remove_elements(head, 6)