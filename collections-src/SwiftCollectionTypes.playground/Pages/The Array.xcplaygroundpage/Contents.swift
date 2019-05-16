//: **Introduction to Algorithms and Data Structures in Swift 5** - Source Code
//:
//: Get the course **[on Udemy using this discounted coupon](https://www.udemy.com/introduction-to-algorithms-in-swift/?couponCode=BESTPRICE)**
//:
//: The book version is available **[on iTunes](http://itunes.apple.com/us/book/id1345964250)** and **[Amazon](https://www.amazon.com/Introduction-Algorithms-Data-Structures-Swift-ebook/dp/B077D8MQ31)**
//:
//: _ _ _
//: ## The Array
//: Let's take a closer look at the Swift Array
//:
//: - Callout(Interested in Swift programming?):
//: Check out my **[Youtube channel](https://www.youtube.com/c/swiftprogrammingtutorials)**
//: my courses on **[Udemy](https://www.udemy.com/user/karolynyisztor/)**, **[Lynda](https://www.lynda.com/Karoly-Nyisztor/9655357-1.html)** and **[Pluralsight](https://www.pluralsight.com/profile/author/karoly-nyisztor)**.
//: Website **[www.leakka.com](http://www.leakka.com)**
//: ---

import Foundation

//: - Callout(Arrays):
//: Ordered sequence of non-unique elements

let numbers: Array<Int> = [1, 2, 5, 3, 1, 2]

let numbers1: [Int] = [1, 2, 5, 3, 1, 2] // shorthand form - preferred!

//: - Callout(Type Inference):
//: Swift's type inference engine can work out the type of the array

let numbers2 = [1, 2, 5, 3, 1, 2] // Swift infers the Int type

let doubles = [1.0, 2.0, 5.0, 3.0, 1.0, 2.0] // Array of Double

// Exolicitely specify Float, otherwise will be Double
let floats: [Float] = [1.0, 2.0, 5.0] // Array of Float

print(numbers)
// Output: [0, 2, 1, 3, 1, 42]
//  0  1  2  3  4  5
// [0, 2, 1, 3, 1, 42]

//: - Callout(Array Indices):
//: We can iterate through the array and print the indices using the Array index(of:) and forEach(_:) instance methods
for value in numbers {
    if let index = numbers.firstIndex(of: value) {
        print("Index of \(value) is \(index)")
    }
}

numbers.forEach { value in
    if let index = numbers.firstIndex(of: value) {
        print("Index of \(value) is \(index)")
    }
}

//: - Callout(Accessing the Array):
//: Access by index and using first and last accessors
let second = numbers[1] // dangerous, we haven't checked whether the index is valid!

let emptyArray = [Int]()
let first = emptyArray.first // returns nil
let last = emptyArray.last // returns nil


//: - Callout(Index Bounds Check):
//: Prevent crashes by checking whether the index is within bounds

let index = 1
// check index
if index >= 0,
    index < numbers.count {
    let t = numbers[index]
    print(t)
}

// using indices.contains
if numbers.indices.contains(index) {
    let t = numbers[index]
    print(t)
}

let t = emptyArray[safe: index]
print(t ?? "no value at index \(index)")
//: - Callout(Mutable Arrays):
//: Assign the array to a variable to allow changes after creating it
var mutableNumbers = [1, 2, 5, 3, 1, 2]
mutableNumbers.append(11)
print(mutableNumbers)
// Output: [1, 2, 5, 3, 1, 2, 11]
mutableNumbers.insert(42, at: 4)
print(mutableNumbers)
// Output: [1, 2, 5, 3, 42, 1, 2, 11]

mutableNumbers.remove(at: 1)
print(mutableNumbers)
// Output: [1, 5, 3, 42, 1, 2, 11]

mutableNumbers.removeAll()
print(mutableNumbers)
// Output: []

// removeAll()
mutableNumbers = [1, 2, 5, 3, 1, 2]
mutableNumbers.removeAll()
print("Array count: \(mutableNumbers.count) capacity: \(mutableNumbers.capacity)")
// Output: Array count: 0 capacity: 0

// removeAll(keepingCapacity: true)
mutableNumbers = [1, 2, 5, 3, 1, 2]
mutableNumbers.removeAll(keepingCapacity: true)
print("Array count: \(mutableNumbers.count) capacity: \(mutableNumbers.capacity)")
// Output: Array count: 0 capacity: 6

// Commenting out this line will crash the demo: "fatal error: can't remove first element from an empty collection"
// mutableNumbers.removeFirst()

mutableNumbers = [1, 2, 5, 3, 1, 2]
let wasFirst = mutableNumbers.removeFirst()
print(mutableNumbers)
// Output: [2, 5, 3, 1, 2]

let wasLast = mutableNumbers.removeLast()
print(mutableNumbers)
// Output: [2, 5, 3, 1]

//: [Previous: Generic Functions](@previous) | [Next: The Set](@next)
