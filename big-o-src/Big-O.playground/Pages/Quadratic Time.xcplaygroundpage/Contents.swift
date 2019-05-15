//: **Introduction to Algorithms and Data Structures in Swift 4** - Source Code
//:
//: Get the course **[on Udemy using this discounted coupon](https://www.udemy.com/introduction-to-algorithms-in-swift/?couponCode=BESTPRICE)**
//:
//: The book version is available **[on iTunes](http://itunes.apple.com/us/book/id1345964250)** and **[Amazon](https://www.amazon.com/Introduction-Algorithms-Data-Structures-Swift-ebook/dp/B077D8MQ31)**
//:
//: _ _ _
//: ## Quadratic Time - O(n^2)
//: Demo to demonstrate quadratic time complexity
//:
//: - Callout(Interested in Swift programming?):
//: Check out my **[Youtube channel](https://www.youtube.com/c/swiftprogrammingtutorials)**
//: my courses on **[Udemy](https://www.udemy.com/user/karolynyisztor/)**, **[Lynda](https://www.lynda.com/Karoly-Nyisztor/9655357-1.html)** and **[Pluralsight](https://www.pluralsight.com/profile/author/karoly-nyisztor)**.
//: Website **[www.leakka.com](http://www.leakka.com)**
//: ---

import Foundation

/// Generates multiplication tables
func multTable(_ size: Int) -> [Int] {
    var table = [Int]()
    let array = [Int](1...size)
    
    for i in 0..<array.count {
        for j in 0..<array.count {
            let val = array[i]*array[j]
            table.append(val)
        }
    }
    return table
}

//: Multiplication Table - O(n^2)

print("\nAverage execution time for multiplication table")
print("------------------------------------------------")

let sizes = [10, 20, 30]

for i in 0..<sizes.count {
    let size = sizes[i]
    let execTime = BenchTimer.measureBlock {
        _ = multTable(size)
    }
    
    print(String(format: "Size %d -> %@", size, execTime.formattedTime))
}

//: [Previous: Linear Time](@previous)

