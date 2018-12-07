//
//  CallStackParserTests.swift
//  CallStackParserTests
//
//  Created by kojirof on 2018/12/07.
//  Copyright © 2018 Gumob. All rights reserved.
//

import XCTest
@testable import CallStackParser

class CallStackParserTests: XCTestCase {

    override func setUp() {
    }

    override func tearDown() {
    }

    func testExample() {
        methodA()
    }

    func testPerformanceExample() {
        self.measure {
        }
    }

    func methodA() {
        XCTAssertEqual(Thread.simpleCallStackSymbols.count, 2)
        print(Thread.simpleCallStackString)
        methodB()
    }

    func methodB() {
        XCTAssertEqual(Thread.simpleCallStackSymbols.count, 3)
        print(Thread.simpleCallStackString)
        methodC()
    }

    func methodC() {
        XCTAssertEqual(Thread.simpleCallStackSymbols.count, 4)
        print(Thread.simpleCallStackString)
        methodD()
    }

    func methodD() {
        XCTAssertEqual(Thread.simpleCallStackSymbols.count, 5)
        print(Thread.simpleCallStackString)
    }

}
