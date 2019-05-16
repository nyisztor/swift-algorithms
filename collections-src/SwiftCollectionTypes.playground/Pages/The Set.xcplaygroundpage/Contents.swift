//: **Introduction to Algorithms and Data Structures in Swift 5** - Source Code
//:
//: Get the course **[on Udemy using this discounted coupon](https://www.udemy.com/introduction-to-algorithms-in-swift/?couponCode=BESTPRICE)**
//:
//: The book version is available **[on iTunes](http://itunes.apple.com/us/book/id1345964250)** and **[Amazon](https://www.amazon.com/Introduction-Algorithms-Data-Structures-Swift-ebook/dp/B077D8MQ31)**
//:
//: _ _ _
//: ## The Set
//: In this tutorial, we'll take a closer look at the Set
//:
//: - Callout(Interested in Swift programming?):
//: Check out my **[Youtube channel](https://www.youtube.com/c/swiftprogrammingtutorials)**
//: my courses on **[Udemy](https://www.udemy.com/user/karolynyisztor/)**, **[Lynda](https://www.lynda.com/Karoly-Nyisztor/9655357-1.html)** and **[Pluralsight](https://www.pluralsight.com/profile/author/karoly-nyisztor)**.
//: Website **[www.leakka.com](http://www.leakka.com)**
//: ---

import Foundation
//: - Callout(Sets):
//: Unordered sequence of unique elements

// intialize an empty Set
let numbers = Set<Int>()

// Initialize using array literals
let numbers1: Set<Int> = [1, 2, 5, 3]

// !!! This declares an Array!
let numbers2 = [1, 2, 5, 3] // same as -> let numbers: Array<Int> = [1, 2, 5, 3]

// must specify Set
let numbers3: Set = [1, 2, 5, 3] // type inefrence works out the Int type for its values
    
let doubles: Set = [1.5, 2.2, 5] // same as -> let doubles: Set<Double> = [1.5, 2.2, 5]

//: - Callout(Set vs. Array):
//: Let's clarify the main differences between Sets and Arrays

// 1. Uniqueness of values for Sets
let onesArray: Array = [1, 1, 1, 1]
print(onesArray)
// Output: [1, 1, 1, 1]

let onesSet: Set = [1, 1, 1, 1]
print(onesSet)
// Output: [1]

// 2. No defined ordering for elements of a Set
let numbersArray: Array = [1, 2, 3, 4, 5]
print(numbersArray)
// Output: [1, 2, 3, 4, 5]

let numbersSet: Set = [1, 2, 3, 4, 5]
print(numbersSet)
// Output: undefined order, e.g. [5, 2, 3, 1, 4]
//: - Callout(Traversing the Set):
//: We can iterate over the values in a set
// for-in loop
for value in numbersSet {
    print(value)
}
// Output: undefined order, e.g. 5, 2, 3, 1, 4

// use set.sorted() if you need ordered output
for value in numbers.sorted() {
    print(value)
}
// Output: 1, 2, 3, 4, 5

// forEach
numbers.forEach { value in
    print(value)
}
// Output: undefined order, e.g. 5, 2, 3, 1, 4
//: - Callout(Accessing & Modifying the Set):
//: Accessing and modifying the contents of a Set
var mutableStringSet: Set = ["One", "Two", "Three"]
let item = "Two"

// set.contains()
if mutableStringSet.contains(item) {
    print("\(item) found in the set")
} else {
    print("\(item) not found in the set")
}
// Output: Two found in the set

// set.isEmpty
let strings = Set<String>()
if strings.isEmpty {
    print("Set is empty")
}
// Output: Set is empty

// set.count
let emptyStrings = Set<String>()
if emptyStrings.count == 0 {
    print("Set has no elements")
}
// Output: Set has no elements

// set.insert(_:)
mutableStringSet = ["One", "Two", "Three"]
mutableStringSet.insert("Four")

// set.remoce(_:)
mutableStringSet.remove("Three")

mutableStringSet = ["One", "Two", "Three"]
if let removedElement = mutableStringSet.remove("Ten") {
    print("\(removedElement) was removed from the Set")
} else {
    print("\"Ten\" not found in the Set")
}
// Output: "Ten" not found in the Set

// set.removeAll()
mutableStringSet.removeAll()
// []

// set.removeAll(keepingCapacity: true)
var numbersSet2: Set = [1, 2, 5, 3, 1, 2]
numbersSet2.removeAll(keepingCapacity: true)
print("count: \(numbersSet2.count) capacity: \(numbersSet2.capacity)")
// count: 0 capacity: 6
//: - Callout(Set Operations):
//: The Set exposes useful methods that let us perform fundamental operations.
let primes: Set = [3, 5, 7, 11]
let odds: Set = [1, 3, 5, 7]

// set.union(otherSet)
let union = primes.union(odds)
print(union.sorted())
// Output: [1, 3, 5, 7, 11]

// set.intersection(otherSet)
let intersection = primes.intersection(odds)
print(intersection.sorted())
// Output: [3, 5, 7]

// set.subtract(otherSet)
let subtract = primes.subtracting(odds)
print(subtract.sorted())
// Output: [11]

// set.symmetricDifference(otherSet)
let symmetricDiff = primes.symmetricDifference(odds)
print(symmetricDiff.sorted())
// Output: [1, 11]
//: - Callout(Membership and Equality):
//: Other useful Set methods
// ==
if primes == odds {
    print("\(primes) and \(odds) contain the same values")
}

// set.isSubset(of:_)
let odds2: Set = [1, 3, 5]
if odds2.isSubset(of: odds) {
    print("\(odds2.sorted()) is subset of \(odds.sorted())")
}
// Output: [1, 3, 5] is subset of [1, 3, 5, 7]

// set.isSuperset(of:_)
if odds.isSuperset(of: odds2) {
    print("\(odds.sorted()) is superset of \(odds2.sorted())")
}
// Output: [1, 3, 5, 7] is superset of [1, 3, 5]

// set.isDisjoint(with:_)
let primeNumbers: Set = [2, 3, 5]
let otherPrimeNumbers: Set = [11, 13, 17]

if primeNumbers.isDisjoint(with: otherPrimeNumbers) {
    print("\(primeNumbers.sorted()) has no values in common with \(otherPrimeNumbers.sorted())")
}
// Output: [2, 3, 5] has no values in common with [11, 13, 17]

//: [Previous: The Array](@previous) | [Next: Hashable](@next)
