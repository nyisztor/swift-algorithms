//: **Introduction to Algorithms and Data Structures in Swift 5** - Source Code
//:
//: Get the course **[on Udemy using this discounted coupon](https://www.udemy.com/introduction-to-algorithms-in-swift/?couponCode=BESTPRICE)**
//:
//: The book version is available **[on iTunes](http://itunes.apple.com/us/book/id1345964250)** and **[Amazon](https://www.amazon.com/Introduction-Algorithms-Data-Structures-Swift-ebook/dp/B077D8MQ31)**
//:
//: _ _ _
//: ## Linear Time - O(n)
//: Demo to demonstrate linear time complexity
//:
//: - Callout(Interested in Swift programming?):
//: Check out my **[Youtube channel](https://www.youtube.com/c/swiftprogrammingtutorials)**
//: my courses on **[Udemy](https://www.udemy.com/user/karolynyisztor/)**, **[Lynda](https://www.lynda.com/Karoly-Nyisztor/9655357-1.html)** and **[Pluralsight](https://www.pluralsight.com/profile/author/karoly-nyisztor)**.
//: Website **[www.leakka.com](http://www.leakka.com)**
//: ---

import Foundation

//: Array sum - O(n)
// Warmup
var warmupArray = Array<Int>(repeating: 0, count: 100)
_ = BenchTimer.measureBlock {
    _ = warmupArray.sum()
}

print("\nAverage execution time for array sum using a loop")
print("---------------------------------------------------")

//let arraySizes = [10, 100, 1000, 10000]
let arraySizes = [100, 10000, 100000]

// generate arrays and measure method call
for size in arraySizes {
    let array = Array.generateRandom(size: size)
    
    let execTime = BenchTimer.measureBlock {
        _ = array.sum()
    }
    
    print(String(format: "Size %d -> %@", array.count, execTime.formattedTime))
}
// Using reduce()
print("\nAverage execution time for array sum using reduce()")
print("---------------------------------------------------")

for size in arraySizes {
    let array = Array.generateRandom(size: size)
    
    let execTime = BenchTimer.measureBlock {
        // The first argument passed to reduce() is the initial value, in this case 0.
        // The second argument tells how it should combine that 0 with each item in the array, which means it will sum up all the elements
        _ = array.reduce(0, +)
    }
    
    print(String(format: "Size %d -> %@", array.count, execTime.formattedTime))
}
//: Count odd/even - O(n)
print("\nAverage execution time for counting the number of odd and even elements in a list")
print("---------------------------------------------------------------------------------")

for size in arraySizes {
    let array = Array.generateRandom(size: size)
    
    let execTime = BenchTimer.measureBlock {
        _ = array.countOddEven()
    }
    
    print(String(format: "Size %d -> %@", array.count, execTime.formattedTime))
}
//: [Previous: Constant Time](@previous) | [Next: Quadratic Time](@next)
