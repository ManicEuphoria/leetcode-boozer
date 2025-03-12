require_relative '../../lib/linked_list/easy/interview-02-07'
require_relative '../../utils/listnode'

RSpec.describe Solution do
  let(:solution) { Solution.new }

  describe '#get_intersection_node' do
    # 测试两个链表没有交点
    it 'returns nil when there is no intersection' do
      list_a = create_list([1, 2, 3, 4, 5, 6])
      list_b = create_list([7, 8, 9])
      expect(solution.get_intersection_node(list_a, list_b)).to be_nil
    end

    # 测试链表在某个节点相交
    it 'returns the intersection node when there is an intersection' do
      list_a = create_list([1, 2, 3])
      list_b = create_list([4, 5])
      intersection = create_list([6, 7, 8])
      list_a.next.next.next = intersection
      list_b.next.next = intersection
      expect(solution.get_intersection_node(list_a, list_b)).to eq intersection
    end

    # 测试链表在头节点相交
    it 'returns the head node when the head is the intersection' do
      list_a = create_list([1, 2, 3])
      list_b = list_a # 两个链表相同，头节点相交
      expect(solution.get_intersection_node(list_a, list_b)).to eq list_a
    end

    # 测试链表长度不等且没有交点
    it 'returns nil when lists have different lengths and no intersection' do
      list_a = create_list([1, 2, 3])
      list_b = create_list([4, 5])
      expect(solution.get_intersection_node(list_a, list_b)).to be_nil
    end

    # 测试链表长度相等且有交点
    it 'returns the intersection node when lists have the same length and intersect' do
      list_a = create_list([1, 2])
      list_b = create_list([3, 4])
      intersection = create_list([5, 6, 7])
      list_a.next.next = intersection
      list_b.next.next = intersection
      expect(solution.get_intersection_node(list_a, list_b)).to eq intersection
    end

    # 测试链表长度不等但有交点
    it 'returns the intersection node when lists have different lengths and intersect' do
      list_a = create_list([1, 2, 3, 4, 5])
      list_b = create_list([6, 7])
      intersection = create_list([8, 9, 10])
      list_a.next.next.next.next.next = intersection
      list_b.next.next = intersection
      expect(solution.get_intersection_node(list_a, list_b)).to eq intersection
    end
  end
end