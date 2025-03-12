# 链表类题目

## 题目列表

| 题目编号 | 题目名称 | 难度 | 分类 | 解题代码 |
|---------|---------|------|------|----------|
| 19 | [删除链表的倒数第 N 个结点](https://leetcode.com/problems/remove-nth-node-from-end-of-list/) | Medium | 链表, 双指针 | [Ruby](/ruby/19.rb) |
| 24 | [两两交换链表中的节点](https://leetcode.com/problems/swap-nodes-in-pairs/) | Medium | 链表, 递归 | [Ruby](/ruby/24.rb) |
| 203 | [移除链表元素](https://leetcode.com/problems/remove-linked-list-elements/) | Easy | 链表 | [Ruby](/ruby/203.rb) |
| 206 | [反转链表](https://leetcode.com/problems/reverse-linked-list/) | Easy | 链表 | [Ruby](/ruby/206.rb) |
| 707 | [设计链表](https://leetcode.com/problems/design-linked-list/) | Medium | 链表, 设计 | [Ruby](/ruby/707.rb) |
| 1721 | [交换链表中的节点](https://leetcode.com/problems/swapping-nodes-in-a-linked-list/) | Medium | 链表, 双指针 | [Ruby](/ruby/1721.rb) |
| 面试题 02.07 | [链表相交](https://leetcode.com/problems/intersection-of-two-linked-lists-lcci/) | Easy | 链表, 双指针 | [Ruby](/ruby/interview-02-07.rb) |

## 解题技巧

### 双指针技巧
- 快慢指针：检测环、找中点
- 间隔指针：删除倒数第N个节点
- 优势：节省额外空间，一次遍历解决问题

### 虚拟头节点
- 适用场景：需要对头节点进行操作
- 优势：简化边界条件处理
- 实现：在真实头节点前添加一个虚拟节点

### 递归思维
- 适用场景：重复性的链表操作
- 优势：代码简洁，思路清晰
- 注意：注意递归深度，防止栈溢出

## 常见问题
1. 空链表处理
2. 断链问题
3. 环形链表
4. 递归栈溢出

## 推荐学习顺序
1. 基本链表操作（增删改查）
2. 虚拟头节点技巧
3. 双指针应用
4. 递归解法
5. 复杂链表操作 