//: **Introduction to Algorithms and Data Structures in Swift 5** - Source Code
//:
//: Get the course **[on Udemy using this discounted coupon](https://www.udemy.com/introduction-to-algorithms-in-swift/?couponCode=BESTPRICE)**
//:
//: The book version is available **[on iTunes](http://itunes.apple.com/us/book/id1345964250)** and **[Amazon](https://www.amazon.com/Introduction-Algorithms-Data-Structures-Swift-ebook/dp/B077D8MQ31)**
//:
//: _ _ _
//: ## Constant Time - O(1)
//: Demo to demonstrate constant time complexity
//:
//: - Callout(Interested in Swift programming?):
//: Check out my **[Youtube channel](https://www.youtube.com/c/swiftprogrammingtutorials)**
//: my courses on **[Udemy](https://www.udemy.com/user/karolynyisztor/)**, **[Lynda](https://www.lynda.com/Karoly-Nyisztor/9655357-1.html)** and **[Pluralsight](https://www.pluralsight.com/profile/author/karoly-nyisztor)**.
//: Website **[www.leakka.com](http://www.leakka.com)**
//: ---

import Foundation

//: Array Element Check - O(1)

// Warmup
var warmupArray = Array<Int>(repeating: 0, count: 100)
_ = BenchTimer.measureBlock {
    _ = warmupArray.startsWithZero()
}


print("Average check first element execution time for an array")
print("-------------------------------------------------------")

let arraySizes = [10, 100, 1000, 10000, 100000]

// generate arrays and measure method call
for size in arraySizes {
    let array = Array<Int>(repeating: 0, count: size)
    
    let execTime = BenchTimer.measureBlock {
        _ = array.startsWithZero()
    }
    
    print(String(format: "Size %d -> %@", array.count, execTime.formattedTime))
}
//: Dictionary Search - O(1)
print("\nAverage element lookup time in a dictionary")
print("---------------------------------------------")

let dictSizes = [100, 1000, 100000]

// generate dictionaries and measure lookup
for size in dictSizes {
    let dictionary = Dictionary.generate(size: size)
    let randomKey = String(Int.random(in: 0..<size))
    
    let execTime = BenchTimer.measureBlock {
        _ = dictionary[randomKey]
    }
    
    print(String(format: "Size %d -> %@", dictionary.count, execTime.formattedTime))
}
//: [Next: Linear Time](@next)
