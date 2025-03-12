# Problem 203: Remove Linked List Elements
# Difficulty: Easy
# Category: Linked List
# Link: https://leetcode.com/problems/remove-linked-list-elements/
#
# 题目描述：
# 给你一个链表的头节点 head 和一个整数 val，请你删除链表中所有满足 Node.val == val 的节点，并返回新的头节点。
#
# @param {ListNode} head 链表的头节点
# @param {Integer} val 要删除的值
# @return {ListNode} 删除指定元素后的链表头节点
class Solution
  def remove_elements(head, val)
    dummy = ListNode.new(nil, head) # 创建一个虚拟节点，指向头节点
    current = dummy # 初始化当前节点为虚拟节点
    while current.next # 遍历链表
      if current.next.val == val # 如果下一个节点的值等于目标值
        current.next = current.next.next # 跳过下一个节点
      else
        current = current.next # 否则，移动到下一个节点
      end
    end
    dummy.next # 返回新的头节点
  end
end 