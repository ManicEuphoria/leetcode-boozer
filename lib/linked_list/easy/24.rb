class Solution
  def swap_pairs(head)
    dummy_head = ListNode.new(0, head)
    current = dummy_head

    # 必须有current的下一个和下下个才能交换，否则说明已经交换结束了
    while current.next && current.next.next
      temp = current.next # 防止节点修改
      temp1 = current.next.next.next

      current.next = current.next.next
      current.next.next = temp
      temp.next = temp1
      current = current.next.next
    end

    dummy_head.next
  end
end