//
//  Stack.swift
//  Calculator
//
//  Created by klwx on 2017/9/20.
//  Copyright © 2017年 wufan. All rights reserved.
//

import UIKit

class Stack: NSObject {
    
    // 是否为空（默认为空）
    var isEmpty: Bool {
        get {
            if stackArray.count == 0 {
                return true
            } else {
                return false
            }
        }
    }
    
    // 栈的长度
    var stackLength: Int {
        get {
            return stackArray.count
        }
    }
    
    // 保存元素的数组
    private var stackArray: [Any] = []
    
    //MARK - func
    
    // 初始化
    
    // 入栈
    func push(object: Any) -> Void {
        stackArray.append(object)
    }
    
    // 出栈
    func pop() -> Any? {
        let object = topObject()
        stackArray.removeLast()
        return object
    }
    
    // 返回栈顶元素
    func topObject() -> Any? {
        return stackArray.last
    }
    
    // 清空栈
    func removeStack() -> Void {
        stackArray.removeAll()
    }
}
