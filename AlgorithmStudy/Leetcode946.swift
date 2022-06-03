//
//  Leetcode946.swift
//  AlgorithmStudy
//
//  Created by xingl on 2022/6/3.
//

import Foundation

class Leetcode946 {
    /*  难度：中等
     给定 pushed 和 popped 两个序列，每个序列中的 值都不重复，只有当它们可能是在最初空栈上进行的推入 push 和弹出 pop 操作序列的结果时，返回 true；否则，返回 false 。
     */
    static func validateStackSequences(_ pushed: [Int], _ popped: [Int]) -> Bool {
        var stack = [Int]()   // 栈
        var i = 0  // 当前正在判断出栈序列元素的下标
        for num in pushed {  // 遍历入栈序列中的每个元素
            stack.append(num) // 每遍历一个元素即将该元素push进入栈 stack
            while !stack.isEmpty, stack.last == popped[i] { // 栈顶与队投是否相等
                // 如果相等，同时弹出栈顶元素 与 队列头部元素
                // 直到栈空或者栈顶与队头元素不同
                 _ = stack.popLast() // 弹出栈顶元素
                i += 1               // 弹出队列头部元素
            }
        }
        return stack.isEmpty
    }
}
