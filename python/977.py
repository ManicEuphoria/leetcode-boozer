# Problem 977: Squares of a Sorted Array
# Difficulty: Easy
# Category: Array, Two Pointers
# Link: https://leetcode.cn/problems/squares-of-a-sorted-array/
#
# 题目描述：
# 给你一个按 非递减顺序 排序的整数数组 nums，返回 每个数字的平方 组成的新数组，要求也按 非递减顺序 排序。

from typing import List

class Solution:
    def sorted_squares(self, nums: List[int]) -> List[int]:
        left, right = 0, len(nums) - 1
        res = []
        while left <= right:
            if nums[left] ** 2 > nums[right] ** 2:
                res.append(nums[left] ** 2)
                left += 1
            else:
                res.append(nums[right] ** 2)
                right -= 1
        return res
