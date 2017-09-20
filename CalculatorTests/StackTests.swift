//
//  StackTests.swift
//  Calculator
//
//  Created by klwx on 2017/9/20.
//  Copyright © 2017年 wufan. All rights reserved.
//

import XCTest
@testable import Calculator

class StackTests: XCTestCase {
    
    var stack: Stack!
    
    override func setUp() {
        super.setUp()
        
        stack = Stack()
    }
    
    override func tearDown() {
        stack = nil
        super.tearDown()
    }
    
    func testPush() {
        let int: Int = 1
        stack.push(object: int) // int
        let float: Float = 1.1
        stack.push(object: float) // float
        let double: Double = 1.1
        stack.push(object: double) // double
        let string: String = "1.1"
        stack.push(object: string) // string
        assert(stack.stackLength == 4, "入栈出错")
    }
    
    func testPop() {
        if stack.stackLength == 0 {
            stack.push(object: "popTest")
        } else if stack.stackLength < 0 {
            assert(false, "栈出错")
        }
        
        let stackLength = stack.stackLength
        _ = stack.pop()
        assert(stack.stackLength == stackLength - 1, "出栈出错")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
