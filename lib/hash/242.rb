# @param {String} s
# @param {String} t
# @return {Boolean}
# Checks if two strings are anagrams by counting the frequency of each character
# and comparing the character counts between the two strings.
#
# @example
#   is_anagram('listen', 'silent') # => true
#   is_anagram('foo', 'bar') # => false
#
def is_anagram(s, t)
  # Initialize two hash tables to store the frequency of each character in s and t
  table_s = Hash.new { |k, v|  k[v] = 0}
  table_t = Hash.new { |k, v|  k[v] = 0}

  # Count the frequency of each character in s and t
  s.each_char { |c| table_s[c] += 1 }
  t.each_char { |c| table_t[c] += 1 }

  # Compare the character counts between s and t
  table_s == table_t
end
