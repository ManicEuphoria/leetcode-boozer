class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
  
  def to_array
    result = []
    current = self
    while current
      result << current.val
      current = current.next
    end
    result
  end
end

def create_list(arr)
  return nil if arr.nil? || arr.empty? 

  head = ListNode.new(arr.shift) # 创建头节点并移除数组的第一个元素
  current = head

  arr.each do |val|
    current.next = ListNode.new(val) # 为当前节点添加新的 ListNode
    current = current.next         # 更新当前节点指针
  end

  head # 返回链表的头节点
end