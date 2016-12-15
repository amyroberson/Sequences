//
//  Collatz.swift
//  SequencesCollectionsAndIterators
//
//  Created by Amy Roberson on 12/14/16.
//  Copyright © 2016 Amy Roberson. All rights reserved.
//

import Foundation

struct Collatz{
    let n: Int
    var count: Int = 0
    
    init(n:Int){
        self.n = n
        guard n >= 0 else {
            print(" That number is not logical")
            return
        }
        count = 0
    }
    
    func collatzConjecture() -> [Int]{
        var num = self.n
        var array: [Int] = []
        while num >= 2  {
            if num % 2 == 0 {
                num = num / 2
                array.append(num)
            }else {
                num = ((num * 3) + 1)
                array.append(num)
            }
        }
        return array
    }
}

