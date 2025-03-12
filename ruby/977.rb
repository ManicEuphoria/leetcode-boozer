# Problem 977: Squares of a Sorted Array
# Difficulty: Easy
# Category: Array, Two Pointers
# Link: https://leetcode.com/problems/squares-of-a-sorted-array/
#
# 题目描述：
# 给你一个按 非递减顺序 排序的整数数组 nums，返回 每个数字的平方 组成的新数组，要求也按 非递减顺序 排序。
#
# @param {Integer[]} nums 一个按非递减顺序排序的整数数组
# @return {Integer[]} 返回每个数字的平方组成的新数组，按非递减顺序排序
class Solution
  def sorted_squares(nums)
    l, r, res = 0, nums.length - 1, []
    while l <= r
      if nums[l] ** 2 > nums[r] ** 2
        res << nums[l] ** 2
        l += 1
      else
        res << nums[r] ** 2
        r -= 1
      end
    end
    res.reverse
  end
end 