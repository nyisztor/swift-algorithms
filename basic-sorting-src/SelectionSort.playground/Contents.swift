//: **Introduction to Algorithms and Data Structures in Swift 4** - Source Code
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

func selectionSort(_ input: [Int]) -> [Int] {
    guard input.count > 1 else {
        return input
    }
    
    var result = input
    for index in 0..<(result.count - 1) {
        var indexLowest = index
        
        for forwardIndex in (index + 1)..<result.count {
            if result[forwardIndex] < result[indexLowest] {
                indexLowest = forwardIndex
            }
        }
        
        if index != indexLowest {
            result.swapAt(index, indexLowest)
        }
    }
    return result
}
//: Performance Tests
print("\nSorting random arrays\n")
//: Selection Sort - Sorting Random Arrays
var inputSize = 10
let array10 = Array<Int>.randomArray(size: inputSize, maxValue: 100)
var sortedArray10 = [Int]()
var execTime = BenchTimer.measureBlock {
    sortedArray10 = selectionSort(array10)
}
print("Average selectionSort() execution time for \(inputSize) elements: \(execTime.formattedTime)")

inputSize = 100
let array100 = Array<Int>.randomArray(size: inputSize, maxValue: 100)
var sortedArray100 = [Int]()
execTime = BenchTimer.measureBlock {
    sortedArray100 = selectionSort(array100)
}
print("Average selectionSort() execution time for \(inputSize) elements: \(execTime.formattedTime)")

inputSize = 1000
let array1000 = Array<Int>.randomArray(size: inputSize, maxValue: 1000)

var sortedArray1000 = [Int]()
execTime = BenchTimer.measureBlock {
    sortedArray1000 = selectionSort(array1000)
}
print("Average selectionSort() execution time for \(inputSize) elements: \(execTime.formattedTime)")
//: Selection Sort - Sorting Ordered Arrays
print("\nSorting already ordered arrays\n")

inputSize = 10
let incrementalArray10 = Array<Int>.incrementalArray(size: inputSize)

execTime = BenchTimer.measureBlock {
    sortedArray10 = selectionSort(incrementalArray10)
}
print("Average selectionSort() execution time for \(inputSize) already sorted elements: \(execTime.formattedTime)")

inputSize = 100
let incrementalArray100 = Array<Int>.incrementalArray(size: inputSize)

execTime = BenchTimer.measureBlock {
    sortedArray100 = selectionSort(incrementalArray100)
}
print("Average selectionSort() execution time for \(inputSize) already sorted elements: \(execTime.formattedTime)")

inputSize = 1000
let incrementalArray1000 = Array<Int>.incrementalArray(size: inputSize)

execTime = BenchTimer.measureBlock {
    sortedArray1000 = selectionSort(incrementalArray1000)
}
print("Average selectionSort() execution time for \(inputSize) already sorted elements: \(execTime.formattedTime)")
//: Selection Sort - Sorting Reverse Ordered Arrays
print("\nSorting reverse ordered arrays\n")

inputSize = 10
let reverseOrderedArray10 = Array<Int>.reverseOrderedArray(size: inputSize)

execTime = BenchTimer.measureBlock {
    sortedArray10 = selectionSort(reverseOrderedArray10)
}
print("Average selectionSort() execution time for \(inputSize) reverse sorted elements: \(execTime.formattedTime)")

inputSize = 100
let reverseOrderedArray100 = Array<Int>.reverseOrderedArray(size: inputSize)

execTime = BenchTimer.measureBlock {
    sortedArray100 = selectionSort(reverseOrderedArray100)
}
print("Average selectionSort() execution time for \(inputSize) reverse sorted elements: \(execTime.formattedTime)")

inputSize = 1000
let reverseOrderedArray1000 = Array<Int>.reverseOrderedArray(size: inputSize)

execTime = BenchTimer.measureBlock {
    sortedArray1000 = selectionSort(reverseOrderedArray1000)
}
print("Average selectionSort() execution time for \(inputSize) reverse sorted elements: \(execTime.formattedTime)")
