//
//  CollatzTest.swift
//  SequencesCollectionsAndIterators
//
//  Created by Amy Roberson on 12/14/16.
//  Copyright © 2016 Amy Roberson. All rights reserved.
//

import XCTest
@testable import SequencesCollectionsAndIterators

class CollatzTest: XCTestCase {

    func testCollatz1(){
        let n = Collatz(n:3)
        let expected: [Int] = [10, 5, 16, 8, 4, 2, 1]
        let result = n.collatzConjecture()
        XCTAssertEqual(result, expected)
    }
    
    func testCollatz2(){
        let n = Collatz(n:7)
        let expected: [Int] = [22, 11, 34, 17, 52, 26, 13, 40, 20, 10, 5, 16, 8, 4, 2, 1]
        let result = n.collatzConjecture()
        XCTAssertEqual(result, expected)
    }

    func testCollatz3(){
        let n = Collatz(n:2)
        let expected: [Int] = [1]
        let result = n.collatzConjecture()
        XCTAssertEqual(result, expected)
    }
}
