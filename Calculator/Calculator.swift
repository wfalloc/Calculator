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
        var formuStr: [String] = []
        
        for mathMethod in mathChars {
            formuStr = calCode.components(separatedBy: mathMethod)
        }
        
        return formuStr
    }
    
}
