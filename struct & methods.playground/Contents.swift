import UIKit

// STRUCTURES
struct Car {
    var name: String
}

var car = Car(name: "Audi")
print("my car is \(car.name)")
car.name = "BMW"
print(car.name)

// STRUC WITH COMPUTED VALUE
struct Num {
    let num: Int
    var isPositive: Bool {
        if num > 0 {
            return true
        } else {
            return false
        }
    }
}

let myNum = Num(num: 5)
print(myNum.isPositive)
let myNum2 = Num(num: -1)
print(myNum2.isPositive)

// STRUCT WITH OBSERVER
struct Progress {
    let task: String
    var amount: Int {
        willSet {
            print("\(task) was at \(amount)%")
        }
        didSet {
            print("\(task) is now \(amount)% completed")
        }
    }
}

var loader = Progress(task: "Loading", amount: 0)
loader.amount = 40
loader.amount = 100

// METHODS
struct City {
    let population: Int
    func collectTax() -> Int {
        return population * 100
    }
}

let yerevan = City(population: 5000)
yerevan.collectTax()

// MUTATE
struct Person {
    var name: String

    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var person = Person(name: "Ed")
person.makeAnonymous()

// STRING METHODS
let str = "hello there"
print(str.count)
print(str.hasPrefix("h"))
print(str.uppercased())
print(str.sorted())
print(str.split(separator: " "))

// ARRAY METHODS
var toys = ["ball", "stick"]
print(toys.count)
toys.append("boo")
toys.firstIndex(of: "stick")
print(toys.sorted())
toys.remove(at: 1)

// INITIALIZER
struct User {
    var name: String
    init() {
        name = "no name"
        print("new user created")
    }
}

var seb = User()
seb.name = "SEB"

// INIT WITH PARAM
struct Person1 {
    var name: String
    init(name: String) {
        print("\(name) created")
        self.name = name
    }
}

let ast = Person1(name: "Astgh")
print(ast.name)

// LAZY METHODS - only created when accessed
// lazy init(name: String){}

// STATIC METHODS
struct Student {
    static var classSize = 0
    var name: String

    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

let stud1 = Student(name: "Arman")
let stud2 = Student(name: "Seb")
let stud3 = Student(name: "Jax")
print(Student.classSize)

// PRIVATE METHODS
struct Priv {
    private var id: String

    init(id: String) {
        self.id = id
    }

    func identify() -> String {
        return "My social security number is \(id)"
    }
}

let sso = Priv(id: "123")
print(sso.identify())
