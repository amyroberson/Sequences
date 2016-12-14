//
//  FirstInSquaredTests.swift
//  SequencesCollectionsAndIterators
//
//  Created by Amy Roberson on 12/14/16.
//  Copyright © 2016 Amy Roberson. All rights reserved.
//

import XCTest
@testable import SequencesCollectionsAndIterators

class FirstInSquaredTests: XCTestCase {

    func testGetSquares1(){
        let x = FirstNSquared(n: 3)
        let result = getSquares(list: x)
        let expected = [0, 1, 4]
        XCTAssertEqual(result, expected)
    }
    
    func testGetSquares2(){
        let x = FirstNSquared(n: 5)
        let result = getSquares(list: x)
        let expected = [0, 1, 4, 9, 16]
        XCTAssertEqual(result, expected)
    }
    

}
