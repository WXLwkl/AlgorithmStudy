//
//  Leetcode206.swift
//  AlgorithmStudy
//
//  Created by xingl on 2022/6/3.
//

import Foundation

class Leetcode206 {
    /** 难度：简单
     给你单链表的头节点 head ，请你反转链表，并返回反转后的链表。
     */
    
    /// 直接逆置法
    static func reverseList(_ head: ListNode?) -> ListNode? {
        var curHead = head          // 指向新链表的头结点
        var reverse: ListNode? = nil // 新链表头结点指针，最初指向空
        var next: ListNode? = nil    // 用来备份当前操作结点的下一个结点（指向下一个结点）
        while curHead != nil {
            next = curHead?.next   // 备份head的下一个结点
            curHead?.next = reverse // 将操作结点与原链表断开，使它只想新链表的头结点
            reverse = curHead       // 把reverse指向新链表，赋值为head
            curHead = next          // 将head指向当前原链表的头结点
        }
        return reverse
    }
    
    /// 头插法
    static func reverseList2(_ head: ListNode?) -> ListNode? {
        if head == nil { return head }
        var curHead = head
        let temp = ListNode(0) // 设置临时头结点
        var next: ListNode? = nil
        
        while curHead != nil {
            next = curHead?.next    // 备份head的下一个结点
            curHead?.next = temp.next  // 指向临时头结点temp的下一个结点
            temp.next = curHead     // 使临时头结点temp指向head指向的结点
            curHead = next          // 移动head指针，将其指向next备份的结点
        }
        return temp.next  // 返回临时头结点的下一个结点
    }
        
}
