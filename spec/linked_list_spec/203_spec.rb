require_relative '../../utils/listnode'
require_relative '../../lib/linked_list/easy/203'

RSpec.describe 'remove_elements' do
  it 'removes all elements with the given value' do
    testcase = [1, 2, 6, 3, 4, 5, 6]
    head = create_list(testcase)
    result = remove_elements(head, 6)
    expect(result.to_array).to eq([1, 2, 3, 4, 5])
  end

  it 'handles an empty list' do
    head = nil
    result = remove_elements(head, 1)
    expect(result).to be_nil
  end

  it 'returns an empty list if all elements are removed' do
    testcase = [7, 7, 7, 7]
    head = create_list(testcase)
    result = remove_elements(head, 7)

    expect(result).to be_nil
  end

  it 'returns the same list if no elements are removed' do
    testcase = [1, 2, 3, 4, 5]
    head = create_list(testcase)
    result = remove_elements(head, 6)
    expect(result.to_array).to eq([1, 2, 3, 4, 5])
  end
end
