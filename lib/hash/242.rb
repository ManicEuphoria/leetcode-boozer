# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  table_s = Hash.new { |k, v|  k[v] = 0}
  table_t = Hash.new { |k, v|  k[v] = 0}
  s.each_char { |c| table_s[c] += 1 }
  t.each_char { |c| table_t[c] += 1 }
  table_s == table_t
end