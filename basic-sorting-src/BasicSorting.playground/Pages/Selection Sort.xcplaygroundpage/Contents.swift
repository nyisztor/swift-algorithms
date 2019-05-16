//: **Introduction to Algorithms and Data Structures in Swift 5** - Source Code
//:
//: Get the course **[on Udemy using this discounted coupon](https://www.udemy.com/introduction-to-algorithms-in-swift/?couponCode=BESTPRICE)**
//:
//: The book version is available **[on iTunes](http://itunes.apple.com/us/book/id1345964250)** and **[Amazon](https://www.amazon.com/Introduction-Algorithms-Data-Structures-Swift-ebook/dp/B077D8MQ31)**
//:
//: _ _ _
//: ## Selection Sort
//: We'll start the study of basic sorting algorithms with the selection sort algorithm.
//:
//: - Callout(Interested in Swift programming?):
//: Check out my **[Youtube channel](https://www.youtube.com/c/swiftprogrammingtutorials)**
//: my courses on **[Udemy](https://www.udemy.com/user/karolynyisztor/)**, **[Lynda](https://www.lynda.com/Karoly-Nyisztor/9655357-1.html)** and **[Pluralsight](https://www.pluralsight.com/profile/author/karoly-nyisztor)**.
//: Website **[www.leakka.com](http://www.leakka.com)**
//: ---

import Foundation

//: Selection Sort - Sorting Random Arrays
// Warmup
var warmupArray = Array<Int>(repeating: 0, count: 100)
_ = BenchTimer.measureBlock {
    _ = warmupArray.selectionSorted()
}


print("Average selection sort execution time for shuffled array")
print("--------------------------------------------------------")

let arraySizes = [5, 10, 100]
var sortedArray = [Int]()

// generate arrays and measure method call
for size in arraySizes {
    let array = Array.generateRandom(size: size)
    
    let execTime = BenchTimer.measureBlock {
        sortedArray = array.selectionSorted()
    }
    
    print(String(format: "Size %d -> %@", array.count, execTime.formattedTime))
}
//: Selection Sort - Sorting Ordered Arrays
print("\nAverage selection sort execution time for already sorted array")
print("--------------------------------------------------------------")

for size in arraySizes {
    let array = Array(0..<size)
    
    let execTime = BenchTimer.measureBlock {
        sortedArray = array.selectionSorted()
    }
    
    print(String(format: "Size %d -> %@", array.count, execTime.formattedTime))
}
//: Selection Sort - Sorting Reverse Ordered Arrays
print("\nAverage selection sort execution time for reverse ordered array")
print("---------------------------------------------------------------")

for size in arraySizes {
    let array = Array<Int>(0..<size).reversed() as [Int]
    
    let execTime = BenchTimer.measureBlock {
        sortedArray = array.selectionSorted()
    }
    
    print(String(format: "Size %d -> %@", array.count, execTime.formattedTime))
}
//: [Next: Insertion Sort](@next)
