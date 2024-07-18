class Solution
  def get_intersection_node(head_a, head_b) # 获取两个链表的交点
    return nil if head_a.nil? || head_b.nil? # 如果任意一个链表为空，返回nil

    length_a = get_length(head_a) # 获取链表A的长度
    length_b = get_length(head_b) # 获取链表B的长度

    diff = length_a - length_b # 计算两个链表长度的差值
    if diff > 0 # 如果链表A比链表B长
      head_a = move_forward(head_a, diff) # 将链表A向前移动diff个节点
    else # 如果链表B比链表A长
      head_b = move_forward(head_b, -diff) # 将链表B向前移动diff个节点
    end

    while head_a && head_b # 当链表A和链表B都不为空时
      return head_a if head_a == head_b # 如果链表A和链表B的当前节点相同，返回该节点
      head_a = head_a.next # 链表A向前移动一个节点
      head_b = head_b.next # 链表B向前移动一个节点
    end

    nil # 如果没有交点，返回nil
  end

  private

  def get_length(head) # 获取链表的长度
    length = 0 # 初始化长度为0
    current = head # 当前节点为链表头节点
    while current # 当当前节点不为空时
      length += 1 # 长度加1
      current = current.next # 当前节点向前移动一个节点
    end
    length # 返回链表长度
  end

  def move_forward(head, step) # 将链表向前移动指定的步数
    current = head # 当前节点为链表头节点
    step.times { current = current.next } # 移动step次
    current # 返回移动后的当前节点
  end
end
