# Problem 19: Remove Nth Node From End of List
# Difficulty: Medium
# Category: Linked List, Two Pointers
# Link: https://leetcode.com/problems/remove-nth-node-from-end-of-list/
#
# 题目描述：
# 给你一个链表，删除链表的倒数第 n 个结点，并且返回链表的头结点。
#
# @param {ListNode} head 链表头节点
# @param {Integer} n 要删除的倒数第n个节点
# @return {ListNode} 删除指定节点后的链表头节点
class Solution
  def remove_nth_from_end(head, n)
    # 如果头节点为空，直接返回
    return if head.nil?

    # 初始化计数器
    k = 0
    # 初始化慢指针为头节点
    slow = head 
    # 初始化快指针为头节点
    fast = head
    # 初始化当前节点为头节点
    current = head

    # 遍历链表
    until current.nil?
      # 如果计数器大于n-2，快指针向前移动
      fast = fast.next if k > n - 2
      # 如果计数器大于n，慢指针向前移动
      slow = slow.next if k > n
      # 当前节点向前移动
      current = current.next
      # 计数器加1
      k += 1
    end

    # 如果计数器等于n，头节点向前移动
    if k >= n
      head = head.next
    # 如果计数器等于1，慢指针的下一个节点设为nil
    elsif k == 1
      slow.next = nil
    # 否则，慢指针的下一个节点设为快指针
    else
      slow.next = fast
    end
    # 返回头节点
    head
  end
end 