//
//  ForwardBackWardTests.swift
//  SequencesCollectionsAndIterators
//
//  Created by Amy Roberson on 12/14/16.
//  Copyright © 2016 Amy Roberson. All rights reserved.
//

import XCTest
@testable import SequencesCollectionsAndIterators

class ForwardBackWardTests: XCTestCase {

    func testWithArray(){
        let array = [1,2,3,4,5].makeIterator()
        let expected = [(1,5), (2,4), (3, 3), (4,2), (5,1)]
        let result = forwardBackward(input: array)
        XCTAssert(expected[0] == result[0])
        XCTAssert(expected[1] == result[1])
        XCTAssert(expected[2] == result[2])
        XCTAssert(expected[3] == result[3])
        XCTAssert(expected[4] == result[4])
    }
    
}
