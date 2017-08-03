//: Playground - noun: a place where people can play

import UIKit

// fun exercise/algorithm for today

func findGreatestInList(list: [Int]) -> Int? {
    // try to implement the solution right now
    // use a for loop
    
    if list.count == 0 {
        return nil
    }
    print("Try to get first element")
    var max = list[0]
    print(max)
    
    for num in list {
        print(num)
        if num > max {
            max = num
        }
    }
    return max
}
// this should be 3
//let greatest = findGreatestInList(list: [9, 1, 2, 3, 9])

// this should be 6
//let g = findGreatestInList(list: [1, 4, 5, 6, 2, 6])

// what about: empty list, no numbers inside array
// hint change the return type so that you can return nil
findGreatestInList(list: [1, 10]) //????

