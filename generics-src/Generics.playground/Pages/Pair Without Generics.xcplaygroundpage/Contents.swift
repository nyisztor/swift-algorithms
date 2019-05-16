//: **Introduction to Algorithms and Data Structures in Swift 5** - Source Code
//:
//: Get the course **[on Udemy using this discounted coupon](https://www.udemy.com/introduction-to-algorithms-in-swift/?couponCode=BESTPRICE)**
//:
//: The book version is available **[on iTunes](http://itunes.apple.com/us/book/id1345964250)** and **[Amazon](https://www.amazon.com/Introduction-Algorithms-Data-Structures-Swift-ebook/dp/B077D8MQ31)**
//:
//: _ _ _
//: ## Pair Without Generics - A Naive Approach
//: Create types which hold pairs of different values.
//:
//: - Callout(Interested in Swift programming?):
//: Check out my **[Youtube channel](https://www.youtube.com/c/swiftprogrammingtutorials)**
//: my courses on **[Udemy](https://www.udemy.com/user/karolynyisztor/)**, **[Lynda](https://www.lynda.com/Karoly-Nyisztor/9655357-1.html)** and **[Pluralsight](https://www.pluralsight.com/profile/author/karoly-nyisztor)**.
//: Website **[www.leakka.com](http://www.leakka.com)**
//: ---

import Foundation
//: - Callout(A Naive Approach):
//: We create dedicated structs for each type pair or combination of types

// Pair holding two String values
struct StringPair {
    var first: String
    var second: String
}

// Pair holding two Int values
struct IntPair {
    var first: Int
    var second: Int
}

// Pair with two Float values
struct FloatPair {
    var first: Float
    var second: Float
}

// Data Pair
struct DataPair {
    var first: Data
    var second: Data
}

// String - Double
struct StringDoublePair {
    var first: String
    var second: Double
}
//: - Callout(Type Explosion!):
//: We end up having too many types. This is NOT the way to go!
let pair = StringPair(first: "First", second: "Second")
print(pair)

let numberPair = IntPair(first: 1, second: 2)
print(numberPair)

let stringDoublePair = StringDoublePair(first: "First", second: 42.5)
print(stringDoublePair)
//: [Next: Generic Types](@next)
