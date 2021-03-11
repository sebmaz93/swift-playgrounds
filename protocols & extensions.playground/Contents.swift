import UIKit

// PROTOCOLS
protocol Identifiable {
    var id: String { get set }
}

struct User: Identifiable {
    var id: String
}

func displayID(user: Identifiable) {
    print("my ID is \(user.id)")
}

// INHERITANCE (can be done from multiple protocols)
protocol hasPayment {
    func calcPayment() -> Int
}

protocol canTrain {
    func train()
}

protocol hasVacation {
    func takeVacation(days: Int)
}

protocol Employee: hasPayment, hasVacation, canTrain {}

// EXTENSIONS (you can't store non computed properties)
extension Int {
    func square() -> Int {
        return self * self
    }

    var isEven: Bool {
        return self % 2 == 0
    }
}

let number = 2
number.square()
number.isEven

// PROTOCOL EXTENSIONS
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func summarize() {
        print("There are \(count) of us:")

        for name in self {
            print(name)
        }
    }
}

pythons.summarize()
beatles.summarize()

protocol Identifiable2 {
    var id: String { get set }
    func identify()
}

extension Identifiable2 {
    func identify() {
        print("My ID is \(id).")
    }
}

struct User2: Identifiable2 {
    var id: String
}

let twostraws = User2(id: "twostraws")
twostraws.identify()
