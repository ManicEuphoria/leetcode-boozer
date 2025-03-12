# Problem 242: Valid Anagram
# Difficulty: Easy
# Category: Hash Table, String, Sorting
# Link: https://leetcode.com/problems/valid-anagram/
#
# 题目描述：
# 给定两个字符串 s 和 t，编写一个函数来判断 t 是否是 s 的字母异位词。
# 注意：若 s 和 t 中每个字符出现的次数都相同，则称 s 和 t 互为字母异位词。
#
# @param {String} s 第一个字符串
# @param {String} t 第二个字符串
# @return {Boolean} 如果是字母异位词返回true，否则返回false
class Solution
  def is_anagram(s, t)
    # Initialize two hash tables to store the frequency of each character in s and t
    table_s = Hash.new { |k, v| k[v] = 0 }
    table_t = Hash.new { |k, v| k[v] = 0 }

    # Count the frequency of each character in s and t
    s.each_char { |c| table_s[c] += 1 }
    t.each_char { |c| table_t[c] += 1 }

    # Compare the character counts between s and t
    table_s == table_t
  end
end 