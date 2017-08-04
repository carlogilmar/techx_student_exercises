//: Playground - noun: a place where people can play

import UIKit

// key type: String
// value type: Int
var birthdayMonths = [String: Int]()

birthdayMonths["June"] = 2
birthdayMonths["Feb"] = 2
birthdayMonths["Oct"] = 2
birthdayMonths["July"] = 3
birthdayMonths["Dec"] = 3
birthdayMonths["March"] = 2
birthdayMonths["April"] = 1
birthdayMonths["Sept"] = 3
birthdayMonths["Nov"] = 1
birthdayMonths["May"] = 5
birthdayMonths["Jan"] = 2
birthdayMonths["Aug"] = 20000

//print(birthdayMonths["May"])

var months = ["Nov", "May", "Jan", "Aug"]

//print out the value for each one of these months in birthMonths

//should get 1, 5, 2, 2

//for month in months {
//    print(birthdayMonths[month]!)
//}

// find the month with the high birthday count

var greatest = -1
var mostCommonBirthMonth = ""
//I want to find the month with the greatest amount of birthdays in this class
//birthdayMonths.keys gives me all the available keys
for month in birthdayMonths.keys {
    print(month)
    if birthdayMonths[month]! > greatest {
        greatest = birthdayMonths[month]!
        mostCommonBirthMonth = month
    }
}

print("Most common birth month: \(mostCommonBirthMonth)")








