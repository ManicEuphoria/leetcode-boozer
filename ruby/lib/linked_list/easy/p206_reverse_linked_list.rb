# Problem 206: Reverse Linked List
# Difficulty: Easy
# Category: Linked List
# Link: https://leetcode.com/problems/reverse-linked-list/
#
# 题目描述：
# 给你单链表的头节点 head，请你反转链表，并返回反转后的链表。
#
# @param {ListNode} head 链表的头节点
# @return {ListNode} 反转后的链表头节点
class Solution
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
end 