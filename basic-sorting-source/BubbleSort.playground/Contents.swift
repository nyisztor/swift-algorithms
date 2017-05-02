/*:
 # Introduction to Algorithms in Swift
 ## Source Code
 
 I’m offering lifetime access to the course for 75% off.
 Be sure to take advantage of this discount while it lasts!
 
 [**Here is where you can get your 75% off discount**](https://www.udemy.com/introduction-to-algorithms-in-swift/?couponCode=BESTPRICE)
 _ _ _
 */
//: Bubble Sort
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
                swap(&result[index - 1], &result[index])
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
