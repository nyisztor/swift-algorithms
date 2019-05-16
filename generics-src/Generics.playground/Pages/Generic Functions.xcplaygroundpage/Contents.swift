//: **Introduction to Algorithms and Data Structures in Swift 5** - Source Code
//:
//: Get the course **[on Udemy using this discounted coupon](https://www.udemy.com/introduction-to-algorithms-in-swift/?couponCode=BESTPRICE)**
//:
//: The book version is available **[on iTunes](http://itunes.apple.com/us/book/id1345964250)** and **[Amazon](https://www.amazon.com/Introduction-Algorithms-Data-Structures-Swift-ebook/dp/B077D8MQ31)**
//:
//: _ _ _
//: ## Generic Functions
//: Create a generic function that compares two values
//:
//: - Callout(Interested in Swift programming?):
//: Check out my **[Youtube channel](https://www.youtube.com/c/swiftprogrammingtutorials)**
//: my courses on **[Udemy](https://www.udemy.com/user/karolynyisztor/)**, **[Lynda](https://www.lynda.com/Karoly-Nyisztor/9655357-1.html)** and **[Pluralsight](https://www.pluralsight.com/profile/author/karoly-nyisztor)**.
//: Website **[www.leakka.com](http://www.leakka.com)**
//: ---

import Foundation
//: - Callout(A Generic Solution):
//: We create a generic function that can work with any type
func isEqual<T: Equatable> (left: T, right: T) -> Bool {
    return left == right
}

let stringsEqual = isEqual(left: "Me", right: "You")

let date = Date()
let datesEqual = isEqual(left: date, right: date)
//: - Callout(Compare custom types):
//: We create a custom Contact struct and use it with our isEqual(left: right:) function
struct Contact: Equatable {
    let name: String
    let address: String
    
    init(_ name: String, address: String) {
        self.name = name
        self.address = address
    }
    
    static func == (lhs: Contact, rhs: Contact) -> Bool {
        return lhs.name == rhs.name && lhs.address == rhs.address
    }
}

let oldCampus = Contact("Old Apple Campus", address: "1 Infinite Loop, Cupertino, CA 95014")
let newCampus = Contact("New Apple Campus", address: "19111 Pruneridge Ave, Cupertino, CA 95014")

print(isEqual(left: oldCampus, right: newCampus))

//: [Previous: isEqual Without Generics](@previous)
