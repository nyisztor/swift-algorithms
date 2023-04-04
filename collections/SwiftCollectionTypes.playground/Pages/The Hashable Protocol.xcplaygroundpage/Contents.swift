//: **Introduction to Algorithms and Data Structures in Swift 5** - Source Code
//:
//: Get the course **[on Udemy using this discounted coupon](https://www.udemy.com/introduction-to-algorithms-in-swift/?couponCode=BESTPRICE)**
//:
//: The book version is available **[on iTunes](http://itunes.apple.com/us/book/id1345964250)** and **[Amazon](https://www.amazon.com/Introduction-Algorithms-Data-Structures-Swift-ebook/dp/B077D8MQ31)**
//:
//: _ _ _
//: ## Hashable
//: We must adopt the Hashable protocol to ensure that the given value is unique.
//:
//: - Callout(Interested in Swift programming?):
//: Check out my **[Youtube channel](https://www.youtube.com/c/swiftprogrammingtutorials)**
//: my courses on **[Udemy](https://www.udemy.com/user/karolynyisztor/)**, **[Lynda](https://www.lynda.com/Karoly-Nyisztor/9655357-1.html)** and **[Pluralsight](https://www.pluralsight.com/profile/author/karoly-nyisztor)**.
//: Website **[www.leakka.com](http://www.leakka.com)**
//: ---

struct SimpleStruct: Hashable {
    var identifier: String
    
    // `hashValue` is deprecated as a `Hashable` requirement. To conform to `Hashable`, implement the `hash(into:)` requirement instead.
    // Hasher was introduced in Swift 4.2 and it provides a randomly seeded, universal hash function
    func hash(into hasher: inout Hasher) {
        hasher.combine(identifier)
    }
    
    public static func == (lhs: SimpleStruct, rhs: SimpleStruct) -> Bool {
        return lhs.identifier == rhs.identifier
    }
}

var array = [SimpleStruct]()
array.append(SimpleStruct(identifier: "id"))

var set = Set<SimpleStruct>()
//: [Previous: The Set](@previous) | [Next: The Dictionary](@next)
