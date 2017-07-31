//: Playground - noun: a place where people can play

import UIKit

// start FizzBuzz Algorithm

// if a number is divisible by 3 print "fizz"
// if divisible by 5 print "buzz"
// if divisible by 3 and 5 print "fizzbuzz"

let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 21, 30, 45]

//print(numbers)

func executeFizzBuzz(nums: [Int]) {
    for num in nums {
        if num % 15 == 0 {
            print("\(num) fizzbuzz")
        } else if num % 3 == 0 {
            print("\(num) fizz")
        } else if num % 5 == 0 {
            print("\(num) buzz")
        }
    }
}

// we're writing in Swift 3
// Swift 4 is coming out in 2 months
// might have to learn new syntax later
//executeFizzBuzz(nums: numbers) // a method call
executeFizzBuzz(nums: [1, 2, 3, 5, 6])

