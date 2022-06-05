//
//  Leetcode268.swift
//  AlgorithmStudy
//
//  Created by xingl on 2022/6/5.
//

import Foundation

class Leetcode268 {
    /** 难度：简单
     丢失的数字
     给定一个包含 [0, n] 中 n 个数的数组 nums ，找出 [0, n] 这个范围内没有出现在数组中的那个数。
     */
    /// 位运算：异或
    static func missingNumber(_ nums: [Int]) -> Int {
        var missing = 0
        for i in 0..<nums.count {
            // 将nums中的数字和1到n这n个数字全部进行异或
            missing = missing ^ nums[i] ^ (i + 1)
        }
        return missing // missing中存储的就是消失的数字。
        
//        let nums = nums.sorted()
//        for i in 0..<nums.count {
//            if i ^ nums[i] != 0 { return i }
//        }
//        return nums.count
    }
    /// 等差数列
    static func missingNumber2(_ nums: [Int]) -> Int {
        var sum = 0
        for num in nums {
            sum += num
        }
        
        let add = (1 + nums.count) * nums.count / 2
        return add - sum
    }
}
