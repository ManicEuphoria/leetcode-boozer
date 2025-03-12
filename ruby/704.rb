# Problem 704: Binary Search
# Difficulty: Easy
# Category: Array, Binary Search
# Link: https://leetcode.cn/problems/binary-search/
#
# 题目描述：
# 给定一个 n 个元素有序的（升序）整型数组 nums 和一个目标值 target ，写一个函数搜索 nums 中的 target，如果目标值存在返回下标，否则返回 -1。
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
    n = nums.length
    l = 0  # 确定初始左边界
    r = n - 1  # 确定初始右边界
    while l <= r  # 左闭右闭区间，l == r具有意义
      mid = l + r >> 1  # 求中间数
      nums[mid] > target ? r = mid - 1 : l = mid + 1 # 不断确定左右边界，最终极限靠近 nums.mid ~= target
      return mid if nums[mid].eql? target # 当nums.mid == target时找到结果，直接返回
    end
    -1
  end