//: **Introduction to Algorithms and Data Structures in Swift 4** - Source Code
//:
//: Get the course **[on Udemy using this discounted coupon](https://www.udemy.com/introduction-to-algorithms-in-swift/?couponCode=BESTPRICE)**
//:
//: The book version is available **[on iTunes](http://itunes.apple.com/us/book/id1345964250)** and **[Amazon](https://www.amazon.com/Introduction-Algorithms-Data-Structures-Swift-ebook/dp/B077D8MQ31)**
//:
//: _ _ _
//: ## Insertion Sort
//: Insertion sort is a basic sorting algorithm, which works by analyzing each element and inserting it into its proper place, while larger elements move one position to the right.
//:
//: - Callout(Interested in Swift programming?):
//: Check out my **[Youtube channel](https://www.youtube.com/c/swiftprogrammingtutorials)**
//: my courses on **[Udemy](https://www.udemy.com/user/karolynyisztor/)**, **[Lynda](https://www.lynda.com/Karoly-Nyisztor/9655357-1.html)** and **[Pluralsight](https://www.pluralsight.com/profile/author/karoly-nyisztor)**.
//: Website **[www.leakka.com](http://www.leakka.com)**
//: ---

import Foundation

func bubbleSort(_ input:[Int]) -> [Int] {
    guard input.count > 1 else {
        return input
    }
    
    var result = input
    let count = result.count
    
    var isSwapped = false
    
    repeat {
        isSwapped = false
        for index in 1..<count {
            if result[index] < result[index - 1] {                
                result.swapAt((index - 1), index)
                isSwapped = true
            }
        }
    } while isSwapped
    
    return result
}
//: Performance Tests
var inputSize = 10
let array10 = Array<Int>.randomArray(size: inputSize, maxValue: 10)

var execTime = BenchTimer.measureBlock {
    let sorted = bubbleSort(array10)
}
print("Average bubbleSort() execution time for \(inputSize) elements: \(execTime.formattedTime)")

inputSize = 100
let array100 = Array<Int>.randomArray(size: inputSize, maxValue: 100)
execTime = BenchTimer.measureBlock {
    let sorted = bubbleSort(array100)
}
print("Average bubbleSort() execution time for \(inputSize) elements: \(execTime.formattedTime)")

//: Bubble Sort vs. Selection Sort vs. Insertion Sort
print("\nBubble Sort vs. Insertion Sort vs. Selection Sort\n")

inputSize = 10
let random10 = Array<Int>.randomArray(size: inputSize, maxValue: 10)
execTime = BenchTimer.measureBlock {
    _ = insertionSort(random10)
}
print("Average insertionSort() execution time for \(inputSize) elements: \(execTime.formattedTime)")

execTime = BenchTimer.measureBlock {
    _ = selectionSort(random10)
}
print("Average selectionSort() execution time for \(inputSize) elements: \(execTime.formattedTime)")

execTime = BenchTimer.measureBlock {
    _ = bubbleSort(random10)
}
print("Average bubble() execution time for \(inputSize) elements: \(execTime.formattedTime)")

inputSize = 100
let random100 = Array<Int>.randomArray(size: inputSize, maxValue: 100)
execTime = BenchTimer.measureBlock {
    _ = insertionSort(random100)
}
print("\nAverage insertionSort() execution time for \(inputSize) elements: \(execTime.formattedTime)")

execTime = BenchTimer.measureBlock {
    _ = selectionSort(random100)
}
print("Average selectionSort() execution time for \(inputSize) elements: \(execTime.formattedTime)")

execTime = BenchTimer.measureBlock {
    _ = bubbleSort(random100)
}
print("Average bubble() execution time for \(inputSize) elements: \(execTime.formattedTime)")
