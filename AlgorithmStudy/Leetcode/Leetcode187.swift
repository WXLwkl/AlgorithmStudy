//
//  Leetcode187.swift
//  AlgorithmStudy
//
//  Created by xingl on 2022/6/5.
//

import Foundation

class Leetcode187 {
    /** 难度：简单
     重复的DNA序列
     DNA序列 由一系列核苷酸组成，缩写为 'A', 'C', 'G' 和 'T'.。
        例如，"ACGAATTCCG" 是一个 DNA序列 。
     在研究 DNA 时，识别 DNA 中的重复序列非常有用。
     给定一个表示 DNA序列 的字符串 s ，返回所有在 DNA 分子中出现不止一次的 长度为 10 的序列(子字符串)。你可以按 任意顺序 返回答案。
     */
    
    static func findRepeatedDnaSequences(_ s: String, length: Int) -> [String] {
//        let length = 10
        guard s.count >= length else { return [] }
        let curStr = s as NSString
        
        var dict = [String: Int]()
        var resultArray = [String]()
        for i in 0..<s.count-length+1 {
            let word = curStr.substring(with: NSRange(location: i, length: length))
            dict[word] = (dict[word] ?? 0) + 1
            print(word)
            if dict[word] == 2 {
                resultArray.append(word)
            }
        }
        
//        var dict = [String: Int]()
//        var resultArray = [String]()
//        for i in 0..<s.count-length+1 {
//
//            let start = s.index(s.startIndex, offsetBy: i)
//            let end = s.index(s.startIndex, offsetBy: i + length)
//            let word = String(s[start ..< end])
//            dict[word] = (dict[word] ?? 0) + 1
//            print(word)
//            if dict[word] == 2 {
//                resultArray.append(word)
//            }
//        }
        
        return resultArray
    }
}
