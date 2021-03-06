//
//  CalculatorTests.swift
//  CalculatorTests
//
//  Created by klwx on 2017/9/20.
//  Copyright © 2017年 wufan. All rights reserved.
//

import XCTest
@testable import Calculator

class CalculatorTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testDeleteEmpty() {
        let resultArray = Calculator.deleteEmpty(array: ["9", "+", "", "(", "3", "-", "1", ")", "", "*", "3", "+", "10", "/", "2"])
        assert(resultArray == ["9", "+", "(", "3", "-", "1", ")", "*", "3", "+", "10", "/", "2"], "删除空元素错误")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
