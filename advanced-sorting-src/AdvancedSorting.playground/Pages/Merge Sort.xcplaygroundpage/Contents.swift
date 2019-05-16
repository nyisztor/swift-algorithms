//: **Introduction to Algorithms and Data Structures in Swift 5** - Source Code
//:
//: Get the course **[on Udemy using this discounted coupon](https://www.udemy.com/introduction-to-algorithms-in-swift/?couponCode=BESTPRICE)**
//:
//: The book version is available **[on iTunes](http://itunes.apple.com/us/book/id1345964250)** and **[Amazon](https://www.amazon.com/Introduction-Algorithms-Data-Structures-Swift-ebook/dp/B077D8MQ31)**
//:
//: _ _ _
//: ## Merge Sort
//: The merge sort is a fast divide-an-conquer algorithm.
//:
//: - Callout(Interested in Swift programming?):
//: Check out my **[Youtube channel](https://www.youtube.com/c/swiftprogrammingtutorials)**
//: my courses on **[Udemy](https://www.udemy.com/user/karolynyisztor/)**, **[Lynda](https://www.lynda.com/Karoly-Nyisztor/9655357-1.html)** and **[Pluralsight](https://www.pluralsight.com/profile/author/karoly-nyisztor)**.
//: Website **[www.leakka.com](http://www.leakka.com)**
//: ---

import Foundation

func mergeSort(_ input: [Int]) -> [Int] {
    guard input.count > 1 else {
        return input
    }
    
    let splitIndex = input.count / 2
    let leftArray = mergeSort(Array(input[0..<splitIndex]))
    let rightArray = mergeSort(Array(input[splitIndex..<input.count]))
    
    return merge(leftPart: leftArray, rightPart: rightArray)
}

func merge(leftPart: [Int], rightPart: [Int]) -> [Int] {
    var sorted = [Int]()
    
    var leftIndex = 0
    var rightIndex = 0
    
    while leftIndex < leftPart.count && rightIndex < rightPart.count {
        if leftPart[leftIndex] < rightPart[rightIndex] {
            sorted.append(leftPart[leftIndex])
            leftIndex += 1
        } else if leftPart[leftIndex] > rightPart[rightIndex] {
            sorted.append(rightPart[rightIndex])
            rightIndex += 1
        } else {
            sorted.append(leftPart[leftIndex])
            leftIndex += 1
            sorted.append(rightPart[rightIndex])
            rightIndex += 1
        }
    }
    
    if leftIndex < leftPart.count {
        sorted.append(contentsOf: leftPart[leftIndex..<leftPart.count])
    } else if rightIndex < rightPart.count {
        sorted.append(contentsOf: rightPart[rightIndex..<rightPart.count])
    }
    
    return sorted
}
//: Test
let array = Array.generateRandom(size: 20)
print("The unsorted array:\n\(array)")
let sorted = mergeSort(array)

print("Sorted with merge sort:\n\(sorted)")
//: [Next: Quick Sort](@next)
