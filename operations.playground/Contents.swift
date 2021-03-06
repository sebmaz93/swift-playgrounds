import UIKit

// Operations
let str1 = "seb"
let str2 = "maz"
let mixedStr = str1 + str2

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

var score1 = 95
score1 -= 5

var quote = "The rain "
quote += "falling"

// Conditions
let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

// && || and ternary operator

let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day!")
}

// Range ( 1..<5 contains the numbers 1,2,3,4 | 1...5 is from 1 to 5
let score3 = 85

switch score3 {
case 0 ..< 50:
    print("You failed badly.")
case 50 ..< 85:
    print("You did OK.")
default:
    print("You did great!")
}
