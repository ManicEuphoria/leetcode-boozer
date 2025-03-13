# Problem 209: Minimum Size Subarray Sum
# Difficulty: Medium
# Category: Array, Two Pointers, Binary Search
# Link: https://leetcode.cn/problems/minimum-size-subarray-sum/
#
# 题目描述：
# 给定一个含有 n 个正整数的数组和一个正整数 target 。
# 找出该数组中满足其和 ≥ target 的长度最小的 连续子数组 [numsl, numsl+1, ..., numsr-1, numsr] ，并返回其长度。如果不存在符合条件的子数组，返回 0 。
#
# @param {Integer} target
# @param {Integer[]} nums
# @return {Integer}
def min_sub_array_len(target, nums)
  head, sum = 0, 0 # 初始化头指针，连续字数组之和
  res = nums.size + 1 # 初始化满足条件的连续字数组长度，将其设定为nums.size中不可能出现的一个数，且必须大于nums.size

  nums.size.times do |tail| # 开始相加
    sum += nums[tail] # 循环相加连续子数组的和
    while sum >= target # 关键点：当和大于等于目标时候，开始滑动窗口骚操作
      res = [res, tail - head + 1].min # # 比对最小的长度，赋值给结果，为什么tail-head+1? 如果此时tail位于4，head位于0，则中间有5个元素
       # 骚操作2: 当和大于等于目标时候，将最开始加进去的那个head吐出来，让head指针往后移动。
       # 如果此时sums小于target，则tail自动往后移动，直到sums>target，又会进入while block，重复上一步操作，直到找到一个最小窗口，或者最外层循环结束。
      sums -= nums[head]
      head += 1
    end
  end
  res == nums.size + 1 ? 0 : res # 如果整个数组里没有符合条件的子数组，则res不会走到while循环里，自然就等于初始赋值。
end