//
//  ForwardBackward.swift
//  SequencesCollectionsAndIterators
//
//  Created by Amy Roberson on 12/14/16.
//  Copyright © 2016 Amy Roberson. All rights reserved.
//

import Foundation


//Create a function which takes an arbitrary iterator type and returns all of the elements in the represented sequence tupled with a reversal of the sequence
//[1, 2, 3, 4, 5] -> [(1, 5), (2, 4), (3, 3), (4, 2), (5, 1)]

//let x = [1, 2, 3, 4, 5].makeIterator()

func forwardBackward<Iter : IteratorProtocol>(input: Iter) -> [(Iter.Element, Iter.Element)] {
    var newInput = input
    var forward: [Iter.Element] = []
    var backward: [Iter.Element]
    var array: [(Iter.Element, Iter.Element)] = []
    
    while let item = newInput.next() {
        forward.append(item)
    }
    backward = forward.reversed()
    
    var count = 0
    for _ in forward{
        let x: (Iter.Element, Iter.Element) = (forward[count], backward[count])
        array.append(x)
        count = count + 1
    }
    
    return array
}
