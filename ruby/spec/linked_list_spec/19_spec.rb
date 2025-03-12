require_relative '../../lib/linked_list/medium/19'
require_relative '../../utils/listnode'

RSpec.describe 'remove_nth_from_end' do
  it 'removes the nth node from the end of the linked list' do
    list = create_list [1, 2, 3, 4, 5]
    res = remove_nth_from_end(list, 2)

    expect(res.to_array).to eq([1, 2, 3, 5])
  end

  it 'removes the first node if n is equal to the length of the list' do
    list = create_list [1, 2, 3, 4, 5]
    res = remove_nth_from_end(list, 5)

    expect(res.to_array).to eq([2, 3, 4, 5])
  end

  it 'removes the last node if n is 1' do
    list = create_list [1, 2, 3, 4, 5]
    res = remove_nth_from_end(list, 1)

    expect(res.to_array).to eq([1, 2, 3, 4])
  end

  it '返回原链表，如果n大于链表的长度' do
    list = create_list [1, 2, 3, 4, 5]
    expect { remove_nth_from_end(list, 6) }.not_to raise_error
    expect(remove_nth_from_end(list, 6).to_array).to eq([1, 2, 3, 4, 5])
  end

  it 'returns nil if the list is empty' do
    list = create_list []
    res = remove_nth_from_end(list, 1)

    expect(res).to be_nil
  end
end
