# Problem 24: Swap Nodes in Pairs
# Difficulty: Medium
# Category: Linked List, Recursion
# Link: https://leetcode.com/problems/swap-nodes-in-pairs/
#
# 题目描述：
# 给你一个链表，两两交换其中相邻的节点，并返回交换后链表的头节点。
# 你必须在不修改节点内部的值的情况下完成本题（即，只能进行节点交换）。
#
# @param {ListNode} head 链表头节点
# @return {ListNode} 两两交换节点后的链表头节点
class Solution
  def swap_pairs(head)
    dummy_head = ListNode.new(0, head) # 创建一个虚拟头节点
    current = dummy_head # 初始化当前节点为虚拟头节点

    until current.next.nil? || current.next.next.nil? # 当当前节点的下一个节点为空时，表示后续已经没有节点可以进行交换，或下下个节点为空时，表示只有一个节点，无法进行两两交换，退出循环，
      a = current.next # 暂存当前节点的下一个节点，假设为a
      c = current.next.next.next # 暂存当前节点的下下个节点的下一个节点，假设为c
      current.next = current.next.next # 此时将current指向a的指针，重新指向current.next.next，假设为b
      current.next.next = a # 上一步操作使得current指向a的指针指向了b，没有指针指向a，由于a和b要进行两两交换，所以让目前b的next等于a
      a.next = c # 上一步操作里，原本b指向c的指针被指向a，链表断裂，因此在a,b交换位置后，a需要将指针指向c以保证链表的连接性
      current = current.next.next # 完成一次两两交换后，此时链表前三个节点顺序由原来的a->b->c变成了b->a->c,因此要将current指针移动到a处，以在下次循环里完成a后面两个节点的交换
    end
    dummy_head.next # 返回新的头节点
  end
end 