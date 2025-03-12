require_relative '../../lib/linked_list/medium/24'
require_relative '../../utils/listnode'

RSpec.describe 'swap_pairs' do
  it 'swaps pairs of nodes in a linked list' do
    list = create_list [1, 2, 3, 4]
    res = swap_pairs(list)

    expect(res.to_array).to eq([2, 1, 4, 3])
  end

  it 'returns empty list if linked list is empty' do
    list = create_list []
    res = swap_pairs list

    expect(res).to be_nil
  end
end
