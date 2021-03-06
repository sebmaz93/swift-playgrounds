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
