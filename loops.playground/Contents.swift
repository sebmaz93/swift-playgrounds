import UIKit

// FOR LOOP
let count = 1 ... 5
for number in count {
    print("Number \(number)")
}

let names = ["seb", "astgh", "arm"]
for name in names {
    print(name)
}

for _ in 1 ... 5 {
    print("play")
}

// WHILE LOOP
var num = 1
while num <= 5 {
    print(num)
    num += 1
}

print("finished")

// REPEAT LOOP (EXECUTES AT LEAST ONCE)
var rep = 0
repeat {
    print("repeat \(rep) exec")
    rep += 1
} while rep < 3

// BREAK TO EXIT LOOP
var brk = 5
while brk >= 0 {
    print("still larger")
    if brk == 2 {
        print("reached 2")
        break
    }
    brk -= 1
}

print("SEB")

// BREAK NESTED LOOP
outerLoop: for i in 1 ... 5 {
    for j in 1 ... 5 {
        let product = i * j
        print("\(i) * \(j) is \(product)")

        if product == 20 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

// CONTINUE WITHOUT BREAK JUST SKIP
for i in 1 ... 5 {
    if i % 2 == 1 {
        continue
    }
    print(i)
}
