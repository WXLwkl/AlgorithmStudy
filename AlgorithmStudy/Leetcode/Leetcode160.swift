//
//  Leetcode160.swift
//  AlgorithmStudy
//
//  Created by xingl on 2022/6/3.
//

import Foundation

class Leetcode160 {
    
    /** 难度：简单
     给你两个单链表的头节点 headA 和 headB ，请你找出并返回两个单链表相交的起始节点。如果两个链表不存在相交节点，返回 null 。
     */
    
    /// AB & BA 双指针遍历法
    static func getIntersectionNode2(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        if headA == nil || headB == nil {
            return nil
        }

        var curA = headA
        var curB = headB

        while curA !== curB {
            curA = curA == nil ? headB : curA!.next
            curB = curB == nil ? headA : curB!.next
        }

        return curA
    }

    /// 双指针 对应平移
    static func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        guard let headA = headA, let headB = headB else { return nil }
        // 计算A B 的长度
        let lengthA = length(headA)
        let lengthB = length(headB)

        var resultA: ListNode? = headA
        var resultB: ListNode? = headB

        // 移动较长的链表，是指针 headA 与 headB 对齐
        if lengthA > lengthB {
            resultA = movePointer(headA, count: lengthA - lengthB)
        } else {
            resultB = movePointer(headB, count: lengthB - lengthA)
        }

        // 存储交点地址
        var result: ListNode?

        // 同时平移 headA 与 headB
        while resultA != nil, resultB != nil {
            // 如果相等 即为交点
            if resultA === resultB {
                result = resultA
                break
            }
            resultA = resultA?.next
            resultB = resultB?.next
        }
        return result
    }

    static func length(_ node: ListNode) -> Int {
        var length = 0
        var currentNode: ListNode? = node
        while currentNode != nil {
            length += 1
            currentNode = currentNode?.next
        }
        return length
    }

    static func movePointer(_ head: ListNode, count: Int) -> ListNode? {
        var currentNode: ListNode? = head
        for _ in 0 ..< count {
            currentNode = currentNode?.next
        }
        return currentNode
    }
}
