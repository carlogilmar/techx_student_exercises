//: Playground - noun: a place where people can play

import UIKit

struct Location {
    let name: String
    let latitude: Float
}

struct Person {
    let name: String
    let age: Int
    let location: Location
}

let guangzhou = Location(name: "guangzhou", latitude: 25.1)
let joey = Person(name: "joey", age: 21, location: guangzhou)
print(joey.name, joey.location.name)


//class Location {
//    //define some properties
//    var name: String = ""
//    var latitude: Float = 0.0
//}

//give Joey a location
//class Person {
//    var name: String = ""
//    var age: Int = 0
//    var location: Location = Location()
//}

//let guangzhou = Location()
//guangzhou.name = "Guangzhou"
//guangzhou.latitude = 34.5

//let joey = Person()
//joey.location.name = "Guangzhou"
//joey.age = 21 // legal age of drinking for the US
//joey.name = "Joey"
//joey.location = guangzhou
////This is an easier way to print out things:
//print("Name: \(joey.name), Age: \(joey.age), Location: \(joey.location.name)")
//print("Age:", joey.age)
