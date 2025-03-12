# Problem 707: Design Linked List
# Difficulty: Medium
# Category: Linked List, Design
# Link: https://leetcode.com/problems/design-linked-list/
#
# 题目描述：
# 设计链表的实现。您可以选择使用单链表或双链表。单链表中的节点应该具有两个属性：val 和 next。
# val 是当前节点的值，next 是指向下一个节点的指针/引用。如果要使用双向链表，则还需要一个属性 prev 以指示链表中的上一个节点。
# 假设链表中的所有节点都是 0-index 的。
#
# 实现 MyLinkedList 类：
# - MyLinkedList() 初始化 MyLinkedList 对象。
# - int get(int index) 获取链表中第 index 个节点的值。如果索引无效，则返回 -1。
# - void addAtHead(int val) 在链表的第一个元素之前添加一个值为 val 的节点。插入后，新节点将成为链表的第一个节点。
# - void addAtTail(int val) 将值为 val 的节点追加到链表的最后一个元素。
# - void addAtIndex(int index, int val) 在链表中的第 index 个节点之前添加值为 val 的节点。如果 index 等于链表的长度，则该节点将附加到链表的末尾。如果 index 大于链表长度，则不会插入节点。如果 index 小于 0，则在头部插入节点。
# - void deleteAtIndex(int index) 如果索引 index 有效，则删除链表中的第 index 个节点。

class LinkedNode
  attr_accessor :next, :val

  def initialize(val = nil, _next = nil)
    @val = val
    @next = _next
  end
end

class MyLinkedList
  def initialize
    @dummy_head = LinkedNode.new(0)
    @size = 0
  end

  # 获取链表中第 index 个节点的值
  # @param {Integer} index
  # @return {Integer}
  def get(index)
    return -1 if index.negative? || index >= @size

    cur = @dummy_head.next
    index.times { cur = cur.next }
    cur.val
  end

  # 在链表头部添加一个值为 val 的节点
  # @param {Integer} val
  # @return {void}
  def add_at_head(val)
    new_node = LinkedNode.new(val)
    new_node.next = @dummy_head.next
    @dummy_head.next = new_node
    @size += 1
  end

  # 在链表尾部添加一个值为 val 的节点
  # @param {Integer} val
  # @return {void}
  def add_at_tail(val)
    cur = @dummy_head
    cur = cur.next while cur.next
    cur.next = LinkedNode.new(val)
    @size += 1
  end

  # 在链表的第 index 个节点之前添加值为 val 的节点
  # @param {Integer} index
  # @param {Integer} val
  # @return {void}
  def add_at_index(index, val)
    return if index.negative? || index > @size

    cur = @dummy_head
    index.times { cur = cur.next }
    new_node = LinkedNode.new(val, cur.next)
    cur.next = new_node
    @size += 1
  end

  # 删除链表中的第 index 个节点
  # @param {Integer} index
  # @return {void}
  def delete_at_index(index)
    return if index.negative? || index >= @size

    cur = @dummy_head
    index.times { cur = cur.next }
    cur.next = cur.next.next
    @size -= 1
  end
end 