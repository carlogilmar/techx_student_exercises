//: Playground - noun: a place where people can play

import UIKit

// Print every other word in a sentence

func printEveryOtherWord(sentence: String) {
    // implment this
    // Hint: Use sentence.components(separatedBy: " ") gives you back an array of strings
    // Hint 2: Use % to get the remainder, for example 1 % 2 = 1
    // Hint 3: Keep a counter variable and += 1
    let allWords = sentence.components(separatedBy: " ")
    
    var bool = true
    allWords.forEach({
        bool ? print($0) : Void()
        bool = !bool
    })
    
    // let's say you are Facebook or Google, you have a billion requests coming into your website
    // saving 0.000001 seconds
    
//    for word in allWords {
//        if bool {
//            print(word)
//        }
//        bool = !bool
//    }
    
//        var i = 0 // i don't want to use this
//    for word in allWords{
//        if i % 2 == 0{
//            print(word)
//        }
//        i += 1
//    }
}

printEveryOtherWord(sentence: "How are you doing today? I'm having 豆 浆") // prints "How", "you", "today", "having", "奖"
