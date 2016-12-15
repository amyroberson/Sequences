//
//  BattleShip.swift
//  SequencesCollectionsAndIterators
//
//  Created by Amy Roberson on 12/14/16.
//  Copyright © 2016 Amy Roberson. All rights reserved.
//

import Foundation


struct BattleShip {
    var x: [Character]
    var y: [Int]
    
    init(x:[Character], y:[Int]){
        self.y = y
        self.x = x

    }
    
    func boardSpaces() -> [(Character, Int)] {
        var array: [(Character, Int)] = []
        var count = 0
        for _ in self.x {
            let character: Character = self.x[count]
            var iter = self.y.makeIterator()
            while let num = iter.next() {
                let insert: (Character, Int) = (character, num)
                array.append(insert)
            }
            count += 1
        }
        return array
    }
    
}
