import UIKit

// FUNCTIONS
func greeting(name: String) {
    print("Welcome to playgrounds \(name) !")
}

greeting(name: "seb")

func sum(int1: Int, int2: Int) -> Int {
    return int1 + int2
}

let value = sum(int1: 2, int2: 3)

// PARAMS EXTERNAL NAME AND INTERNAL NAME
func sayHello(to name: String) {
    print("Hello \(name)")
}

sayHello(to: "Astgh")

// PARAMS WITHOUT EXTERNAL NAME
func greet(_ name: String, _ name2: String) {
    print("Yo \(name) & \(name2)")
}

greet("Arman", "Jax")

// WITH DEFAULT PARAM VALUE
func greet2(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

greet2("Tom")
greet2("Tom", nicely: false)

// WITH UNKNOWN AMOUNT OF PARAMS
func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

square(numbers: 1, 2, 3)

// THROW FUNCTION
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

// INOUT FUNCTION (MUTATES THE PASSED PARAM VALUE)
func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)
print(myNum)
