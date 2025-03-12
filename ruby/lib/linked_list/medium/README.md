# 中等难度链表题目

## 题目列表

| 题号 | 题目名称 | 关键词 | 难度 |
|------|---------|--------|------|
| 19 | [Remove Nth Node From End of List](p19_remove_nth_node_from_end_of_list.rb) | 链表, 双指针 | Medium |
| 24 | [Swap Nodes in Pairs](p24_swap_nodes_in_pairs.rb) | 链表, 递归 | Medium |
| 707 | [Design Linked List](p707_design_linked_list.rb) | 链表, 设计 | Medium |
| 1721 | [Swapping Nodes in a Linked List](p1721_swapping_nodes_in_a_linked_list.rb) | 链表, 双指针 | Medium |

## 解题技巧

### 双指针技巧
- 19题使用快慢指针找到倒数第N个节点
- 1721题使用数组辅助实现节点值交换

### 节点交换
- 24题展示了两两交换节点的经典算法
- 使用虚拟头节点简化操作

### 链表设计
- 707题实现了完整的链表数据结构
- 包含了链表的基本操作

## 注意事项
1. 使用虚拟头节点简化边界情况
2. 注意指针操作时的顺序
3. 保存必要的临时节点防止断链
4. 仔细处理边界条件 