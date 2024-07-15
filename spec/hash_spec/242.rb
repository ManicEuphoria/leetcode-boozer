require 'rspec'
require_relative '../../lib/hash/242'

RSpec.describe 'is_anagram' do
  it 'returns true for anagrams' do
    expect(is_anagram('anagram', 'nagaram')).to be true
  end

  it 'returns false for non-anagrams' do
    expect(is_anagram('rat', 'car')).to be false
  end

  it 'returns true for empty strings' do
    expect(is_anagram('', '')).to be true
  end

  it 'returns false for strings of different lengths' do
    expect(is_anagram('a', 'ab')).to be false
  end

  it 'returns true for anagrams with different cases' do
    expect(is_anagram('Listen'.downcase, 'Silent'.downcase)).to be true
  end
end
  