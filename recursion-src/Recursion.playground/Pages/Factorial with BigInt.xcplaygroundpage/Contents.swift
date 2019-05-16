//: **Introduction to Algorithms and Data Structures in Swift 5** - Source Code
//:
//: Get the course **[on Udemy using this discounted coupon](https://www.udemy.com/introduction-to-algorithms-in-swift/?couponCode=BESTPRICE)**
//:
//: The book version is available **[on iTunes](http://itunes.apple.com/us/book/id1345964250)** and **[Amazon](https://www.amazon.com/Introduction-Algorithms-Data-Structures-Swift-ebook/dp/B077D8MQ31)**
//:
//: _ _ _
//: ## Recursive Functions
//: Recursive factorial function with BigInt
//:
//: - Callout(Interested in Swift programming?):
//: Check out my **[Youtube channel](https://www.youtube.com/c/swiftprogrammingtutorials)**
//: my courses on **[Udemy](https://www.udemy.com/user/karolynyisztor/)**, **[Lynda](https://www.lynda.com/Karoly-Nyisztor/9655357-1.html)** and **[Pluralsight](https://www.pluralsight.com/profile/author/karoly-nyisztor)**.
//: Website **[www.leakka.com](http://www.leakka.com)**
//: ---
typealias BigInt = _BigInt<UInt>

/*
 Calculate n!
 This version works with values above 21.
 It relies on the BigInt prototype, which has not yet been released, but it is going to be part of the official Swift library. See https://github.com/apple/swift/blob/master/test/Prototypes/BigInt.swift
 */

func factorial(n: BigInt) -> BigInt {
    return n < 2 ? 1 : n * factorial(n: n - 1)
}

print(UInt64.max)
print(factorial(n: 32))
