# Problem 209: Minimum Size Subarray Sum
# Difficulty: Medium
# Category: Array, Two Pointers, Binary Search
# Link: https://leetcode.cn/problems/minimum-size-subarray-sum/
#
# 题目描述：
# 给定一个含有 n 个正整数的数组和一个正整数 target 。
# 找出该数组中满足其和 ≥ target 的长度最小的 连续子数组 [numsl, numsl+1, ..., numsr-1, numsr] ，并返回其长度。如果不存在符合条件的子数组，返回 0 。

from typing import List

class Solution:
    def minSubArrayLen(self, target: int, nums: List[int]) -> int:
        n = len(nums)                # ❶ 获取数组总长度（菜市场总摊位数量）
        head, sums, min_sub = 0, 0, float('inf') # ❷ 初始化：蛇头位置/吃进的食物量/最小记录本

        for tail in range(n):        # ❸ 蛇尾开始逐个摊位尝鲜（右指针移动）
            sums += nums[tail]       # ❹ 吞下当前摊位的食物（累加数字）
            
            while sums >= target:    # 🌟 关键点：当吃饱时开始收缩身体
                min_sub = min(min_sub, tail - head + 1) # ❺ 记录当前身体长度（尾巴-头+1）
                sums -= nums[head]   # ❻ 吐出最前面吃的那份食物（减掉头部数字）
                head += 1            # ❼ 蛇头向前缩进（左指针右移）

        return min_sub if min_sub != float('inf') else 0 # ❽ 返回记录本上的最小值
    

if __name__ == '__main__':
    testcase = [1, 2, 3, 3, 1, 4, 4, 5]
    target = 9
    print(Solution().minSubArrayLen(target, testcase))
