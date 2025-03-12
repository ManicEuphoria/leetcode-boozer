# 简单难度链表题目

## 题目列表

| 题号 | 题目名称 | 关键词 | 难度 |
|------|---------|--------|------|
| 203 | [Remove Linked List Elements](p203_remove_linked_list_elements.rb) | 链表, 虚拟头节点 | Easy |
| 206 | [Reverse Linked List](p206_reverse_linked_list.rb) | 链表, 反转 | Easy |
| 面试题 02.07 | [Intersection of Two Linked Lists LCCI](p0207_intersection_of_two_linked_lists_lcci.rb) | 链表, 双指针 | Easy |

## 解题技巧

### 虚拟头节点
- 203题使用虚拟头节点简化了对头节点的处理
- 避免了处理头节点的特殊情况

### 链表反转
- 206题展示了经典的链表反转算法
- 使用虚拟头节点和迭代方式实现

### 双指针技巧
- 面试题02.07使用双指针找到两个链表的交点
- 通过计算长度差来对齐两个链表

## 注意事项
1. 注意处理空链表的边界情况
2. 小心不要丢失节点的引用导致断链
3. 使用虚拟头节点简化操作
4. 画图帮助理解链表操作 