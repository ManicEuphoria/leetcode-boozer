# LeetCode 题解 - Ruby 实现

## 目录结构

```
lib/
├── array/          # 数组相关题目
├── hash/           # 哈希表相关题目
└── linked_list/    # 链表相关题目
```

## 文件命名规范

所有题解文件都遵循以下命名格式：
```
p{题号}_{题目名称}.rb
```

例如：
- `p977_squares_of_sorted_array.rb`
- `p1_two_sum.rb`

## 代码模板规范

每个题解文件都应包含以下内容：

```ruby
# Problem {题号}: {题目名称}
# Difficulty: {Easy|Medium|Hard}
# Category: {分类标签，用逗号分隔}
# Link: https://leetcode.com/problems/{题目链接}
#
# 题目描述：
# {简要描述题目内容}
#
# @param {参数类型} 参数名称
# @return {返回类型}
class Solution
  def solve(...)
    # 实现代码
  end
end
```

## 测试规范

- 每个题解都应该有对应的测试文件
- 测试文件路径：`spec/{分类}/{难度}/p{题号}_{题目名称}_spec.rb`
- 测试应该包含基本用例和边界情况

## 文档要求

每个分类目录下都应包含：
1. README.md：说明该类型题目的特点和解题技巧
2. 按难度分类的子目录：easy、medium、hard
3. 每个难度子目录下的 README.md：列出该难度下的所有题目 