# @param {ListNode} head
# @param {Integer} val
# @return {ListNode}
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
