//: Playground - noun: a place where people can play

import UIKit

// filter an array of Int values that are greater than X

func filterGreaterThan(x: Int, list: [Int]) -> [Int] {
    //implement this function here
    var newList = [Int]()
    for num in list {
        if num < x {
            newList.append(num)
        }
    }
    return newList
}
//let infinity = Int(Double.infinity)
filterGreaterThan(x: 4, list: [1, 2, 10, 20, 30, 5, 4]) // [10, 20, 30]

[1, 2, 10, 20, 30, 5, 4].filter { (num) -> Bool in
    return num >= 5
}

[1, 2, 10, 20, 30, 5, 4].filter { (num) -> Bool in
    return num < 5
}









