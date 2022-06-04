//
//  Leetcode155.swift
//  AlgorithmStudy
//
//  Created by xingl on 2022/6/4.
//

import Foundation

class MinStack {
    /** 难度：简单
     设计一个支持 push ，pop ，top 操作，并能在常数时间内检索到最小元素的栈。
     实现 MinStack 类:
        MinStack() 初始化堆栈对象。
        void push(int val) 将元素val推入堆栈。
        void pop() 删除堆栈顶部的元素。
        int top() 获取堆栈顶部的元素。
        int getMin() 获取堆栈中的最小元素。
     */
    var array: [Int]
    var minValue: Int?
    
    init() {
        array = []
    }
    
    func push(_ val: Int) {
        if val < getMin() {
            minValue = val
        }
        array.append(val)
    }
    
    func pop() {
        let last = array.popLast()
        if last == minValue {
            minValue = nil
        }
    }
    
    func top() -> Int {
        guard let top = array.last else { return 0 }
        return top
    }
    
    func getMin() -> Int {
        if array.isEmpty {
            return 0
        }
        if minValue == nil {
            findMin()
        }
        return minValue ?? 0
    }
    
    func findMin() {
        minValue = array.reduce(Int.max) { min($0, $1) }
    }
}

class MinStack2 {
    class Node {
        let val: Int
        var min: Int
        var next: Node?
        init(_ val: Int, _ min: Int) {
            self.val = val
            self.min = min
        }
    }
    
    var head: Node?
    
    func push(_ val: Int) {
        if head == nil {
            head = Node(val, val)
        } else {
            let node = Node(val, min(head!.min, val))
            node.next = head
            head = node
        }
    }
    
    func pop() {
        head = head?.next
    }
    
    func top() -> Int {
        return head?.val ?? 0
    }
    
    func getMin() -> Int {
        return head?.min ?? 0
    }
    
    func listPrint(name: String) {
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
