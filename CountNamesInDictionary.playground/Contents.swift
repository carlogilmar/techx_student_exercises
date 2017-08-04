//: Playground - noun: a place where people can play

import UIKit

let names = ["Jack", "Jill", "Billy", "Jane", "Jack", "Billy", "Frank", "Frank", "Frank", "Bob"]

var lastNames = [String: Int]()

lastNames["张"] = 2
lastNames["黄"] = 5
lastNames["郑"] = 3
lastNames["林"] = 4

var greatest = -1
var mostCommonName: String = ""
lastNames.forEach { (key, value) in
    if value > greatest {
        mostCommonName = key
        greatest = value
    }
}

mostCommonName