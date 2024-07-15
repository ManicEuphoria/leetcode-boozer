require 'rspec'
require_relative '../../lib/linked_list/203'

RSpec.describe 'remove_elements' do
  it 'removes all elements with the given value' do
    testcase = [1, 2, 6, 3, 4, 5, 6]
    head = new_listnode(testcase)
    result = remove_elements(head, 6)
    expect(list_to_array(result)).to eq([1, 2, 3, 4, 5])
  end

  it 'handles an empty list' do
    head = nil
    result = remove_elements(head, 1)
    expect(list_to_array(result)).to eq([])
  end

  it 'returns an empty list if all elements are removed' do
    testcase = [7, 7, 7, 7]
    head = new_listnode(testcase)
    result = remove_elements(head, 7)
    expect(list_to_array(result)).to eq([])
  end

  it 'returns the same list if no elements are removed' do
    testcase = [1, 2, 3, 4, 5]
    head = new_listnode(testcase)
    result = remove_elements(head, 6)
    expect(list_to_array(result)).to eq([1, 2, 3, 4, 5])
  end
end

def list_to_array(head)
  array = []
  current = head
  while current
    array << current.val
    current = current.next
  end
  array
end
