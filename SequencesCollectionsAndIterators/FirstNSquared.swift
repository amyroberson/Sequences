//
//  FirstNSquared.swift
//  SequencesCollectionsAndIterators
//
//  Created by Amy Roberson on 12/14/16.
//  Copyright © 2016 Amy Roberson. All rights reserved.
//

import Foundation
 //Create a type FirstNSquared which accepts an Int n and, when iterated over using a for loop, produces the first n squares starting with 0.

struct FirstNSquared : Sequence, IteratorProtocol{
    let n : Int
    var count: Int = 0
    
    init(n: Int){
        self.n = n
        guard n >= 0 else {
            print(" That number is not logical")
            return
        }
        count = 0
    }
    mutating func next() -> Int?{
        if (count >= n) {
            return nil
        } else {
            count = count + 1
            return (count - 1)
        }
    }
}

func getSquares(list:FirstNSquared) -> [Int] {
    var newArray: [Int] = []
    for i in list {
        newArray.append( (i * i))
    }
    return newArray
}
