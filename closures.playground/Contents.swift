import UIKit

// CLOSURES
let driving = {
    print("I'm driving in my car")
}

driving()

// WITH PARAM
let driving2 = { (place: String) in
    print("I'm going to \(place) in my car")
}

driving2("London")

// WITH RETURN VALUE
let drivingWithReturn = { (place: String) -> String in
    "ret I'm going to \(place) in my car"
}

let message = drivingWithReturn("London")
print(message)

// CLOSURE AS FUNC PARAM
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel(action: driving)

// TRAILING CLOSURE
func travel2(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

// can avoid () because no params
travel {
    print("I'm driving in my car")
}

// CLOSURE WITH PARAM WHEN PARAM ACCEPTS PARAM
func travel3(action: (String) -> String) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travel3 { (name: String) in
    "\(name) E Arrived"
}

// CLOSURE WITH SHORTHAND SYNTAX
func shortHand(action: (String) -> String) {
    print("I'm ready")
    let description = action("paris")
    print(description)
    print("I ...")
}

shortHand { place in
    "I'm going to \(place) in my bus"
}

shortHand {
    "I'm going to \($0) in my car"
}

// FUNCTION RETURNS A CLOSURE
func travel4() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travel4()
result("London")
