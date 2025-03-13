# Problem 59: Spiral Matrix II
# Difficulty: Medium
# Category: Array, Matrix, Simulation
# Link: https://leetcode.cn/problems/spiral-matrix-ii/
#
# 题目描述：
# 给你一个正整数 n ，生成一个包含 1 到 n^2 所有元素，且元素按顺时针顺序螺旋排列的 n x n 正方形矩阵 matrix 。
#
# @param {Integer} n
# @return {Integer[][]}
def generate_matrix(n)
  matrix = Array.new(n) { Array.new(n, 0) }

  val = 1
  left, right = 0, n - 1
  top, bottom = 0, n - 1

  while left <= right && top <= bottom# top < bottom 也可以，while判定条件二选一
    # fill in every top row from LEFT to RIGHT with val
    (left..right).each do |col|
      matrix[top][col] = val
      val += 1
    end
    top += 1

    # fill in every right column from TOP to BOTTOM with val
    (top..bottom).each do |row|
      matrix[row][right] = val
      val += 1
    end
    right -= 1

    # fill in every bottom row from RIGHT to LEFT with val in reverse order (n-1 -> 0)
    right.downto(left).each do |col|
      matrix[bottom][col] = val
      val += 1
    end
    bottom -= 1

    # fill in every left column from BOTTOM to TOP with val in reverse order (n-1 -> 0)
    bottom.downto(top).each do |row|
      matrix[row][left] = val
      val += 1
    end
    left += 1
  end

  matrix
end