require_relative '../../lib/linked_list/easy/206'

RSpec.describe 'reverse_linked_list' do
  it 'reverses a linked list' do
    testcase = [1, 2, 3, 4, 5]
    head = create_list(testcase)
    reversed = reverse_list(head)
    expect(reversed.to_array).to eq([5, 4, 3, 2, 1])
  end

  it 'handles an empty list' do
    head = nil
    reversed = reverse_list(head)
    expect(reversed).to be_nil
  end

  it 'returns the same list if no elements are reversed' do
    head = ListNode.new(1)
    reversed = reverse_list(head)
    expect(reversed).to eq(head)
  end
end
