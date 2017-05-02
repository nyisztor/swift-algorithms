/*:
 # Introduction to Algorithms in Swift
 ## Source Code
 
 I’m offering lifetime access to the course for 75% off.
 Be sure to take advantage of this discount while it lasts!
 
 [**Here is where you can get your 75% off discount**](https://www.udemy.com/introduction-to-algorithms-in-swift/?couponCode=BESTPRICE)
 _ _ _
 */
//: Selection Sort
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
            swap(&result[index], &result[indexLowest])
        }
    }
    return result
}
//: Performance Tests
print("\nSorting random arrays\n")
//: Selection Sort - Sorting Random Arrays
var inputSize = 10
let array10 = Array<Int>.randomArray(size: inputSize, maxValue: 100)

var execTime = BenchTimer.measureBlock {
    let sortedArray10 = selectionSort(array10)
}
print("Average selectionSort() execution time for \(inputSize) elements: \(execTime.formattedTime)")

inputSize = 100
let array100 = Array<Int>.randomArray(size: inputSize, maxValue: 100)

execTime = BenchTimer.measureBlock {
    let sortedArray100 = selectionSort(array100)
}
print("Average selectionSort() execution time for \(inputSize) elements: \(execTime.formattedTime)")

inputSize = 1000
let array1000 = Array<Int>.randomArray(size: inputSize, maxValue: 1000)

execTime = BenchTimer.measureBlock {
    let sortedArray1000 = selectionSort(array1000)
}
print("Average selectionSort() execution time for \(inputSize) elements: \(execTime.formattedTime)")
//: Selection Sort - Sorting Ordered Arrays
print("\nSorting already ordered arrays\n")

inputSize = 10
let incrementalArray10 = Array<Int>.incrementalArray(size: inputSize)

execTime = BenchTimer.measureBlock {
    let sortedArray10 = selectionSort(incrementalArray10)
}
print("Average selectionSort() execution time for \(inputSize) already sorted elements: \(execTime.formattedTime)")

inputSize = 100
let incrementalArray100 = Array<Int>.incrementalArray(size: inputSize)

execTime = BenchTimer.measureBlock {
    let sortedArray100 = selectionSort(incrementalArray100)
}
print("Average selectionSort() execution time for \(inputSize) already sorted elements: \(execTime.formattedTime)")

inputSize = 1000
let incrementalArray1000 = Array<Int>.incrementalArray(size: inputSize)

execTime = BenchTimer.measureBlock {
    let sortedArray1000 = selectionSort(incrementalArray1000)
}
print("Average selectionSort() execution time for \(inputSize) already sorted elements: \(execTime.formattedTime)")
//: Selection Sort - Sorting Reverse Ordered Arrays
print("\nSorting reverse ordered arrays\n")

inputSize = 10
let reverseOrderedArray10 = Array<Int>.reverseOrderedArray(size: inputSize)

execTime = BenchTimer.measureBlock {
    let sortedArray10 = selectionSort(reverseOrderedArray10)
}
print("Average selectionSort() execution time for \(inputSize) reverse sorted elements: \(execTime.formattedTime)")

inputSize = 100
let reverseOrderedArray100 = Array<Int>.reverseOrderedArray(size: inputSize)

execTime = BenchTimer.measureBlock {
    let sortedArray100 = selectionSort(reverseOrderedArray100)
}
print("Average selectionSort() execution time for \(inputSize) reverse sorted elements: \(execTime.formattedTime)")

inputSize = 1000
let reverseOrderedArray1000 = Array<Int>.reverseOrderedArray(size: inputSize)

execTime = BenchTimer.measureBlock {
    let sortedArray1000 = selectionSort(reverseOrderedArray1000)
}
print("Average selectionSort() execution time for \(inputSize) reverse sorted elements: \(execTime.formattedTime)")
