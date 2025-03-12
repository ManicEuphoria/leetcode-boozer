# Problem 1721: Swapping Nodes in a Linked List
# Difficulty: Medium
# Category: Linked List, Two Pointers
# Link: https://leetcode.com/problems/swapping-nodes-in-a-linked-list/
#
# 题目描述：
# 给你链表的头节点 head 和一个整数 k。交换链表中第 k 个节点和倒数第 k 个节点的值后，返回链表的头节点。
#
# @param {ListNode} head 链表头节点
# @param {Integer} k 要交换的位置
# @return {ListNode} 交换节点值后的链表头节点
class Solution
  def swap_nodes(head, k)
    temp = head
    len = 0
    array = []

    until temp.nil?
      len += 1
      array << temp.val
      temp = temp.next
    end

    return head if k > len

    a = array[k - 1]
    b = array[len - k]

    current = head
    [k, len - k + 1].max.times do |i|
      current.val = b if i == k - 1
      current.val = a if i == len - k
      current = current.next
    end
    head
  end
end 