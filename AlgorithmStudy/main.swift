//
//  main.swift
//  AlgorithmStudy
//
//  Created by xingl on 2022/6/3.
//

import Foundation

//leetcode946()
//leetcode160()
//leetcode206()
leetcode155()




func leetcode946() {
    let valid = Leetcode946.validateStackSequences([1, 2, 3, 4, 5], [4, 3, 5, 1, 2])
    print(valid)
}

func leetcode160() {
    let nodeA = ListNode(4)
    let nodeB = ListNode(1)
    let nodeC = ListNode(5)
    let nodeD = ListNode(0)
    let nodeE = ListNode(1)
    let nodeF = ListNode(8)
    let nodeG = ListNode(4)
    let nodeH = ListNode(5)

    nodeA.next = nodeB
    nodeB.next = nodeF
    nodeC.next = nodeD
    nodeD.next = nodeE
    nodeE.next = nodeF
    nodeF.next = nodeG
    nodeG.next = nodeH

    // A: [4，1，8，4，5]
    // B: [5，0，1，8, 4，5]
    let aa = Leetcode160.getIntersectionNode(nodeA, nodeC)
    print(aa?.val ?? -1)
}

func leetcode206() {
    let a = ListNode(1)
    let b = ListNode(2)
    let c = ListNode(3)
    let d = ListNode(4)
    let e = ListNode(5)

    a.next = b
    b.next = c
    c.next = d
    d.next = e
    
    ListNode.listPrint(a, name: "head")
    
    let reverse = Leetcode206.reverseList2(a)
    
    ListNode.listPrint(reverse, name: "reverse")
}

func leetcode155() {
    let minStack = MinStack2()
    minStack.push(-3)
    print("top = \(minStack.top())")
    print(minStack.getMin())  // -3
    minStack.push(6)
    print("top = \(minStack.top())")
    print(minStack.getMin())  // -3
    minStack.push(-8)
    print("top = \(minStack.top())")
    print(minStack.getMin())  // -8
    minStack.push(2)
    print("top = \(minStack.top())")
    print(minStack.getMin())  // -8
    
    minStack.pop()
    print("top = \(minStack.top())")
    print(minStack.getMin()) // -8
    minStack.pop()
    print("top = \(minStack.top())")
    print(minStack.getMin()) // -3
    
    print(minStack.listPrint(name: "test"))
}
