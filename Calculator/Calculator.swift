//
//  Calculator.swift
//  Calculator
//
//  Created by klwx on 2017/9/20.
//  Copyright © 2017年 wufan. All rights reserved.
//

import UIKit

// 只能进行整数运算
class Calculator: NSObject {
    
    // 中缀表达式转换为后缀表达式
    static func transformtTo(calCode: String) -> String {
        let mathChars = ["+", "-", "*", "/", "(", ")"]
        let stack = Stack()
        var formuStr: [String] = [calCode]
        
        // 根据计算符号分割表达式
        for mathMethod in mathChars {
            var cacheArray: [String] = []
            
            for codeStr in formuStr {
                let array = codeStr.components(separatedBy: mathMethod)
                var mutableArray: [String] = []
                for str in array {
                    mutableArray.append(contentsOf: [str, mathMethod])
                }
                mutableArray.removeLast()
                
                cacheArray.append(contentsOf: mutableArray)
            }
            
            print(cacheArray)
            formuStr = cacheArray
        }
        
        print(formuStr)
        
        print(deleteEmpty(array: formuStr))
        
        return ""
    }
    
    // 递归删除多余空字段
    static func deleteEmpty(array: [String]) -> [String] {
        var array = array
        var isFinish = true
        
        var resultArray: [String] = []
        
        for (index, str) in array.enumerated() {
            if str == "" {
                array.remove(at: index)
                isFinish = false
                break
            }
        }
        
        resultArray = array
        
        if isFinish == false {
            return deleteEmpty(array: resultArray)
        } else {
            return resultArray
        }
    }
    
//    func transformt(codes: [String]) -> [String] {
//        
//    }
    
}
