import UIKit

// CLASSES
class Dog {
    let name: String
    let breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

let jax = Dog(name: "jax", breed: "malamute")
print(jax.name, jax.breed)

// INHERITANCE
class Doberman: Dog {
    init(name: String) {
        super.init(name: name, breed: "doberman")
    }
}

let yana = Doberman(name: "yana")
print(yana.name, yana.breed)

// OVERRIDE METHODS
class Cat {
    func makeNoise() {
        print("meow")
    }
}

class Spynx: Cat {
    override func makeNoise() {
        print("meozz")
    }
}

let zigi = Spynx()
zigi.makeNoise()

// FINAL CLASSES (NO INHERIT NO CHANGES)
// just add final keyword before your class

// COPYING OBJECTS
class Singer {
    var name = "eminem"
}

let singer = Singer()
print(singer.name)

// changing the copy changes the original one also unlike the STRUCT
let singerCopy = singer
singerCopy.name = "jz"
print(singer.name)

// DEINITIALIZER (called when class is destroyed)
class Person {
    let name = "seb"

    init() {
        print("\(name) alive")
    }

    func greet() {
        print("hello \(name)")
    }

    deinit {
        print("\(name) is off")
    }
}

for _ in 1 ... 3 {
    let person = Person()
    person.greet()
}
