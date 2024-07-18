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

=begin
  :type index: Integer
  :rtype: Integer
=end
  def get(index)
    return -1 if index.negative? || index >= @size

    cur = @dummy_head.next
    index.times { cur = cur.next }
    cur.val
  end

=begin
  :type val: Integer
  :rtype: Void
=end
  def add_at_head(val)
    new_node = LinkedNode.new(val)
    new_node.next = @dummy_head.next
    @dummy_head.next = new_node
    @size += 1
  end

=begin
  :type val: Integer
  :rtype: Void
=end
  def add_at_tail(val)
    cur = @dummy_head
    cur = cur.next while cur.next
    cur.next = LinkedNode.new(val)
    @size += 1
  end

=begin
  :type index: Integer
  :type val: Integer
  :rtype: Void
=end
  def add_at_index(index, val)
    return if index.negative? || index > @size

    cur = @dummy_head
    index.times { cur = cur.next }
    new_node = LinkedNode.new(val, cur.next)
    cur.next = new_node
    @size += 1
  end

=begin
  :type index: Integer
  :rtype: Void
=end
  def delete_at_index(index)
    return if index.negative? || index >= @size

    cur = @dummy_head
    index.times { cur = cur.next }
    cur.next = cur.next.next
    @size -= 1
  end
end