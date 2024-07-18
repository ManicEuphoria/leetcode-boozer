require_relative '../spec_helper'
require_relative '../../lib/linked_list/medium/707'

RSpec.describe MyLinkedList do
  before(:each) do
    @list = MyLinkedList.new
  end

  it 'adds elements at the head' do
    @list.add_at_head(1)
    expect(@list.get(0)).to eq(1)
  end

  it 'adds elements at the tail' do
    @list.add_at_tail(3)
    expect(@list.get(0)).to eq(3)
  end

  it 'adds elements at a specific index' do
    @list.add_at_head(1)
    @list.add_at_tail(3)
    @list.add_at_index(1, 2)
    expect(@list.get(1)).to eq(2)
  end

  it 'gets elements by index' do
    @list.add_at_head(1)
    @list.add_at_tail(3)
    @list.add_at_index(1, 2)
    expect(@list.get(0)).to eq(1)
    expect(@list.get(1)).to eq(2)
    expect(@list.get(2)).to eq(3)
  end

  it 'deletes elements by index' do
    @list.add_at_head(1)
    @list.add_at_tail(3)
    @list.add_at_index(1, 2)
    @list.delete_at_index(1)
    expect(@list.get(1)).to eq(3)
  end
end
