//: **Introduction to Algorithms and Data Structures in Swift 5** - Source Code
//:
//: Get the course **[on Udemy using this discounted coupon](https://www.udemy.com/introduction-to-algorithms-in-swift/?couponCode=BESTPRICE)**
//:
//: The book version is available **[on iTunes](http://itunes.apple.com/us/book/id1345964250)** and **[Amazon](https://www.amazon.com/Introduction-Algorithms-Data-Structures-Swift-ebook/dp/B077D8MQ31)**
//:
//: _ _ _
//: ## isEqual() Function Without Generics - A Naive Approach
//: Create a function that compares two values
//:
//: - Callout(Interested in Swift programming?):
//: Check out my **[Youtube channel](https://www.youtube.com/c/swiftprogrammingtutorials)**
//: my courses on **[Udemy](https://www.udemy.com/user/karolynyisztor/)**, **[Lynda](https://www.lynda.com/Karoly-Nyisztor/9655357-1.html)** and **[Pluralsight](https://www.pluralsight.com/profile/author/karoly-nyisztor)**.
//: Website **[www.leakka.com](http://www.leakka.com)**
//: ---

import Foundation
//: - Callout(A Naive Approach):
//: We create a function for each type we compare

// isEqual() for String
func isEqual(left: String, right: String) -> Bool {
    return left == right
}

// isEqual() for Double
func isEqual(left: Double, right: Double) -> Bool {
    return left == right
}

// isEqual() for Date
func isEqual(left: Date, right: Date) -> Bool {
    return left == right
}

// isEqual() for Data
func isEqual(left: Data, right: Data) -> Bool {
    return left == right
}
//: - Callout(Code Repetition!):
//: Avoid code duplication. It is always a bad sign and it leads to bugs and maintenance problems.
let stringsEqual = isEqual(left: "Me", right: "You")

let date = Date()
let datesEqual = isEqual(left: date, right: date)
//: [Previous: Generic Types](@previous) | [Next: Generic Functions](@next)

