# LeetCode 题解

## 项目简介

本项目是一个系统化的 LeetCode 题解集合，旨在汇总记录我的多语言刷题历程，提升算法和编程能力。项目特点：

1. **多语言实现**：提供多种编程语言的解题代码
2. **详细注释**：每个解法都包含完整的思路说明
3. **最佳实践**：展示编程技巧和代码优化方法

## 题目分类

### 按数据结构分类

- [数组](docs/array.md)
- [链表](docs/linked_list.md)
- [哈希表](docs/hash.md)

### 按难度分类

#### Easy

| 题号 | 题目 | 实现语言 |
|------|------|----------|
| 27 | [移除元素](https://leetcode.cn/problems/remove-element/) | [Ruby](/ruby/27.rb) \| [Python](/python/27.py) |
| 203 | [移除链表元素](https://leetcode.cn/problems/remove-linked-list-elements/) | [Ruby](/ruby/203.rb) \| [Python](/python/203.py) |
| 206 | [反转链表](https://leetcode.cn/problems/reverse-linked-list/) | [Ruby](/ruby/206.rb) \| [Python](/python/206.py) |
| 242 | [有效的字母异位词](https://leetcode.cn/problems/valid-anagram/) | [Ruby](/ruby/242.rb) \| [Python](/python/242.py) |
| 704 | [二分查找](https://leetcode.cn/problems/binary-search/) | [Ruby](/ruby/704.rb) \| [Python](/python/704.py) |
| 977 | [有序数组的平方](https://leetcode.cn/problems/squares-of-a-sorted-array/) | [Ruby](/ruby/977.rb) \| [Python](/python/977.py) |
| 面试题 02.07 | [链表相交](https://leetcode.cn/problems/intersection-of-two-linked-lists-lcci/) | [Ruby](/ruby/interview-02-07.rb) \| [Python](/python/interview-02-07.py) |

#### Medium

| 题号 | 题目 | 实现语言 |
|------|------|----------|
| 19 | [删除链表的倒数第 N 个结点](https://leetcode.cn/problems/remove-nth-node-from-end-of-list/) | [Ruby](/ruby/19.rb) \| [Python](/python/19.py) |
| 24 | [两两交换链表中的节点](https://leetcode.cn/problems/swap-nodes-in-pairs/) | [Ruby](/ruby/24.rb) \| [Python](/python/24.py) |
| 707 | [设计链表](https://leetcode.cn/problems/design-linked-list/) | [Ruby](/ruby/707.rb) \| [Python](/python/707.py) |
| 1721 | [交换链表中的节点](https://leetcode.cn/problems/swapping-nodes-in-a-linked-list/) | [Ruby](/ruby/1721.rb) \| [Python](/python/1721.py) |

#### Hard
暂无题目

## 代码规范

### 文件命名
- 使用题目编号作为文件名，如 `203.rb`

### 代码注释
- 文件头部包含题目信息和解题思路
- 关键步骤添加中文注释
- 说明时间和空间复杂度

## 贡献指南

1. Fork 本仓库
2. 创建新的分支 `git checkout -b feature/problem-xxx`
3. 提交改动 `git commit -am 'Add solution for problem xxx'`
4. 推送到分支 `git push origin feature/problem-xxx`
5. 创建 Pull Request

### 提交要求
- 遵循文件命名规范
- 添加完整的注释和文档
- 确保代码在leetcode上已AC

## 许可证

本项目采用 MIT 许可证，详情请参见 [LICENSE](LICENSE) 文件。
