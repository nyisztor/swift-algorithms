//: **Introduction to Algorithms and Data Structures in Swift 5** - Source Code
//:
//: Get the course **[on Udemy using this discounted coupon](https://www.udemy.com/introduction-to-algorithms-in-swift/?couponCode=BESTPRICE)**
//:
//: The book version is available **[on iTunes](http://itunes.apple.com/us/book/id1345964250)** and **[Amazon](https://www.amazon.com/Introduction-Algorithms-Data-Structures-Swift-ebook/dp/B077D8MQ31)**
//:
//: _ _ _
//: ## The Dictionary
//: The Swift Dictionary
//:
//: - Callout(Interested in Swift programming?):
//: Check out my **[Youtube channel](https://www.youtube.com/c/swiftprogrammingtutorials)**
//: my courses on **[Udemy](https://www.udemy.com/user/karolynyisztor/)**, **[Lynda](https://www.lynda.com/Karoly-Nyisztor/9655357-1.html)** and **[Pluralsight](https://www.pluralsight.com/profile/author/karoly-nyisztor)**.
//: Website **[www.leakka.com](http://www.leakka.com)**
//: ---

import Foundation
//: - Callout(Dictionaries):
//: Key-value pairs
// Specify the key and the value type to create an empty dictionary
var dayOfWeek = Dictionary<Int, String>()

// Using the initializer syntax
var dayOfWeek2 = [Int: String]()

// Using dictionary literals
var dayOfWeek3: [Int: String] = [0: "Sun", 1: "Mon", 2: "Tue"]

// Type inference in action - Swift can infer the type of the keys and the values can based on the dictionary literals
var dayOfWeek4 = [0: "Sun", 1: "Mon", 2: "Tue"]

print(dayOfWeek4)
// Output: [0: "Sun", 1: "Mon", 2: "Tue"]

// Type inference won't work if the type of the dictionary literals is not consistent
// var mixedDict = [0: "Zero", 1: 1.0, "pi": 3.14] // Error: Heterogeneous collection literal could only be inferred to '[AnyHashable : Any]'; add explicit
// AnyHashable can be used as the supertype for keys in heterogeneous dictionaries.
var mixedMap3: [AnyHashable: Any] = [0: "Zero", 1: 1.0, "pi": 3.14]

// We could also define the dictionary by wrapping the key values in AnyHashable instances and by explicitely declaring the values as type Any
var mixedMap4 = [AnyHashable(0): "Zero" as Any,
                 AnyHashable(1): 1.0 as Any,
                 AnyHashable("pi"): 3.14 as Any]

// This is just to illustrate what happens behind the scenes. The shorthand syntax is obviously shorter and more readable.
let piWrapped = AnyHashable("pi")
if let unwrappedPi = piWrapped.base as? String {
    print(unwrappedPi)
}
//: - Callout(Access and modify):
//: Change and retrieve the contents of a Dictionary
// Access using the subscript syntax
var dayOfWeekx = [0: "Sun", 1: "Mon", 2: "Tue"]
if let day = dayOfWeekx[2] {
    print(day)
}
// Prints: Tue

// Iterating over the key-value pairs of a dictionary
for (key, value) in dayOfWeek {
    print("\(key): \(value)")
}
// Prints: 2: Tue 0: Sun 1: Mon

// We can also access the Dictionary's key property to retrieve its keys
for key in dayOfWeek.keys {
    print(key)
}

// The dictionary value property will return its values:
for value in dayOfWeek.values {
    print(value)
}

// Add a new value
dayOfWeek[3] = "Wed"
print(dayOfWeek)
// Prints: [2: "Tue", 0: "Sun", 1: "Mon", 3: "Wed"]

dayOfWeek[2] = "Mardi"
print(dayOfWeek)
// Prints: [2: "Mardi", 0: "Sun", 1: "Mon", 3: "Wed"]

dayOfWeek.updateValue("Tue", forKey: 2)
print(dayOfWeek)
// Prints: [2: "Tue", 0: "Sun", 1: "Mon", 3: "Wed"]

// Remove a value by assigning nil for its key
dayOfWeek[1] = nil
print(dayOfWeek)
// Prints: [2: "Tue", 0: "Sun", 3: "Wed"]

// You can achieve the same - yet with more typing - via the removeValue(forKey:) method
dayOfWeek.removeValue(forKey: 2)
print(dayOfWeek)
// Prints: [0: "Sun", 3: "Wed"]

// Wipe out the dictionary
dayOfWeek.removeAll()

print(dayOfWeek)
// Output: [:]

dayOfWeek = [0: "Zero", 1: "One", 10: "Ten"]
dayOfWeek.removeAll(keepingCapacity: true)

print("\(dayOfWeek), count: \(dayOfWeek.count) capacity: \(dayOfWeek.capacity)")
// Output: [:], count: 0 capacity: 3

//: [Previous: Hashable](@previous)
