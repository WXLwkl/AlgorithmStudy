//
//  ListNode.swift
//  AlgorithmStudy
//
//  Created by xingl on 2022/6/3.
//

import Foundation

class ListNode {
    var val: Int
    var next: ListNode?
    init() {
        self.val = 0
        self.next = nil
    }

    init(_ val: Int) {
        self.val = val
        self.next = nil
    }

    init(_ val: Int, _ next: ListNode?) {
        self.val = val
        self.next = next
    }
    
    static func listPrint(_ head: ListNode?, name: String) {
        print("----- \(name) ----")
        if head == nil {
            print(" nil ")
            return
        }
        var curHead = head
        while curHead != nil {
            print("\(curHead!.val)", terminator: "_")
            curHead = curHead?.next
        }
        print("\n---- \(name) end ----")
    }
}
