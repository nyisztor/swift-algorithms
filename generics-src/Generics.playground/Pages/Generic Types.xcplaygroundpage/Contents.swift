//: **Introduction to Algorithms and Data Structures in Swift 5** - Source Code
//:
//: Get the course **[on Udemy using this discounted coupon](https://www.udemy.com/introduction-to-algorithms-in-swift/?couponCode=BESTPRICE)**
//:
//: The book version is available **[on iTunes](http://itunes.apple.com/us/book/id1345964250)** and **[Amazon](https://www.amazon.com/Introduction-Algorithms-Data-Structures-Swift-ebook/dp/B077D8MQ31)**
//:
//: _ _ _
//: ## Generic Pair Type
//: Create a generic type which can hold pairs of different values.
//:
//: - Callout(Interested in Swift programming?):
//: Check out my **[Youtube channel](https://www.youtube.com/c/swiftprogrammingtutorials)**
//: my courses on **[Udemy](https://www.udemy.com/user/karolynyisztor/)**, **[Lynda](https://www.lynda.com/Karoly-Nyisztor/9655357-1.html)** and **[Pluralsight](https://www.pluralsight.com/profile/author/karoly-nyisztor)**.
//: Website **[www.leakka.com](http://www.leakka.com)**
//: ---

import Foundation
//: - Callout(A Generic Solution):
//: We create one generic type

struct Pair<T1, T2> {
    var first: T1
    var second: T2
}
//: - Callout(Works with any type):
//: Pair is generic, so we could get rid of all the specific pair types
// Float - Float
let floatFloatPair = Pair<Float, Float>(first: 0.3, second: 0.5)
// String - String
let stringAndString = Pair(first: "First String", second: "Second String")
// String - Double
let stringAndDouble = Pair(first: "I'm a String", second: 99.99)
// Int - Date
let intAndDate = Pair(first: 42, second: Date())
//: [Previous: Pair Without Generics](@previous) | [Next: isEqual without Generics](@next)
