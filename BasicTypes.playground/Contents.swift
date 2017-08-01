//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var num: Float = 1.0
var num2: Double = 1.0

//var numbers: [Double] = [1.0, 2, 3]
//var nums: [Int] = [1, 2, "test"]

let names = ["Joey", "Jack", "Zion", "Johanna", "Summerie", "Burt", "Bob", "Allen"]
func isNameInside(name: String, listOfNames: [String]) -> Bool {
    //how ????
    //should I use a for loop? while loop? something else?
    //print("Name: ", name)
//    var check: Bool = false
    for element in listOfNames {
        if element == name {return true}
        print(element)
        
    }
    return false
}

let testName = "Bob"
isNameInside(name: testName, listOfNames: names)





