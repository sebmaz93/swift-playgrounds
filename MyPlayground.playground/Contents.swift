import UIKit

var str = "Hello, playground"
str = "changed string"

var multiLine = """
Hey \
what \
wqe
"""

var num: Int = 123123
num = 121211211

var dbl: Double = 1.21

var boo: Bool = true

var score = 32
var scoreString = "my score is \(score)"

let cons = "sebouh"

// Collections
/// Array
let arr: [String] = ["seb", "arma"]
arr[0]
// create empty array
var newArr = [Int]()
var arra = Array<Int>()

/// Set  are unordered and no duplicates
let set = Set(["red", "green", "blue"])
// create empty set
var se = Set<String>()

/// Tuples - you can't add remove items from tuple
let tuple = (first: "seb", last: "maz")
tuple.first
tuple.0

/// Dictionary - (objects)
let dic = [
    "name": "seb", "lName": "maz",
]
dic["name"]

/// Dictionary with default values
let foods = [
    "apple": 1,
    "orange": 5,
]
foods["banana", default: 0]

// create empty dic
var teams = [String: String]()
teams["paul"] = "red"
var teamz = Dictionary<String, Int>()

/// Enums
enum Results {
    case pass
    case fail
}

let res = Results.fail

// with associated values
enum Activity {
    case walking(place: String)
    case talking(volume: Int)
}

let walking = Activity.walking(place: "Garden")

enum Planets: Int {
    case earth = 1
    case sun
    case moon
}

let planet = Planets(rawValue: 2)

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
