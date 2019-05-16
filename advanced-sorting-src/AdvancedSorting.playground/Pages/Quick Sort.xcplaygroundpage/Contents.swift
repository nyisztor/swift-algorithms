//: **Introduction to Algorithms and Data Structures in Swift 5** - Source Code
//:
//: Get the course **[on Udemy using this discounted coupon](https://www.udemy.com/introduction-to-algorithms-in-swift/?couponCode=BESTPRICE)**
//:
//: The book version is available **[on iTunes](http://itunes.apple.com/us/book/id1345964250)** and **[Amazon](https://www.amazon.com/Introduction-Algorithms-Data-Structures-Swift-ebook/dp/B077D8MQ31)**
//:
//: _ _ _
//: ## Quicksort
//: The king of the compare-based sorting algorithms.
//:
//: - Callout(Interested in Swift programming?):
//: Check out my **[Youtube channel](https://www.youtube.com/c/swiftprogrammingtutorials)**
//: my courses on **[Udemy](https://www.udemy.com/user/karolynyisztor/)**, **[Lynda](https://www.lynda.com/Karoly-Nyisztor/9655357-1.html)** and **[Pluralsight](https://www.pluralsight.com/profile/author/karoly-nyisztor)**.
//: Website **[www.leakka.com](http://www.leakka.com)**
//: ---

import Foundation

func qsort(_ input: [Int]) -> [Int] {
    guard input.count > 1 else {
        return input
    }
    
    let pivotIndex = input.count / 2
    let pivot = input[pivotIndex]
    
    let less = input.filter {$0 < pivot}
    let equal = input.filter {$0 == pivot}
    let greater = input.filter {$0 > pivot}
    
    return qsort(less) + equal + qsort(greater)
}
//: Test
let array = Array.generateRandom(size: 20)
print("The unsorted array:\n\(array)")
let sorted = qsort(array)

print("Sorted with quick sort:\n\(sorted)")
//: [Previous: Merge Sort](@previous)
