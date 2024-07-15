require 'rspec'
require_relative '../../../lib/array/easy/977'

RSpec.describe 'sorted_squares' do
  it 'returns the squares of a sorted array in non-decreasing order' do
    expect(sorted_squares([-4, -1, 0, 3, 10])).to eq([0, 1, 9, 16, 100])
  end

  it 'handles an array with all negative numbers' do
    expect(sorted_squares([-7, -3, -1])).to eq([1, 9, 49])
  end

  it 'handles an array with all positive numbers' do
    expect(sorted_squares([1, 2, 3])).to eq([1, 4, 9])
  end

  it 'handles an array with both negative and positive numbers' do
    expect(sorted_squares([-5, -3, -2, 1, 4])).to eq([1, 4, 9, 16, 25])
  end

  it 'handles an empty array' do
    expect(sorted_squares([])).to eq([])
  end

  it 'handles an array with one element' do
    expect(sorted_squares([2])).to eq([4])
  end
end
