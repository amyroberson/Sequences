//
//  BattleshipTest.swift
//  SequencesCollectionsAndIterators
//
//  Created by Amy Roberson on 12/14/16.
//  Copyright © 2016 Amy Roberson. All rights reserved.
//

import XCTest
@testable import SequencesCollectionsAndIterators

class BattleshipTest: XCTestCase {
    
    func testBattleship1(){
        let battle = BattleShip(x: ["a", "b", "c"], y: [1, 2])
        let expected: [(Character, Int)] = [("a", 1), ("a", 2), ("b", 1), ("b", 2), ("c", 1), ("c", 2)]
        let result = battle.boardSpaces()
        XCTAssert(expected[0] == result[0])
        XCTAssert(expected[1] == result[1])
        XCTAssert(expected[2] == result[2])
        XCTAssert(expected[3] == result[3])
        XCTAssert(expected[4] == result[4])
        XCTAssert(expected[5] == result[5])
    }

    func testBattleship2(){
        let battle = BattleShip(x: ["x", "y"], y: [1, 2])
        let expected: [(Character, Int)] = [("x", 1), ("x", 2), ("y", 1), ("y", 2)]
        let result = battle.boardSpaces()
        XCTAssert(expected[0] == result[0])
        XCTAssert(expected[1] == result[1])
        XCTAssert(expected[2] == result[2])
        XCTAssert(expected[3] == result[3])
    }

    func testBattleship3(){
        let battle = BattleShip(x: ["x"], y: [1, 2])
        let expected: [(Character, Int)] = [("x", 1), ("x", 2)]
        let result = battle.boardSpaces()
        XCTAssert(expected[0] == result[0])
        XCTAssert(expected[1] == result[1])
    }

}
