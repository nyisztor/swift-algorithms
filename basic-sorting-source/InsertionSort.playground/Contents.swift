/*:
 # Introduction to Algorithms in Swift
 ## Source Code
 
 I’m offering lifetime access to the course for 75% off.
 Be sure to take advantage of this discount while it lasts!
 
 [**Here is where you can get your 75% off discount**](https://www.udemy.com/introduction-to-algorithms-in-swift/?couponCode=BESTPRICE)
 _ _ _
 */
//: Insertion Sort
import Foundation

func insertionSort(_ input: [Int]) -> [Int] {
    var result = input
    
    let count = result.count
    for sortedIndex in 1 ..< count {
        var backIndex = sortedIndex
        while backIndex > 0 && result[backIndex] < result[backIndex - 1] {
            swap(&result[backIndex - 1], &result[backIndex])
            backIndex -= 1
        }
    }
    return result
}
//: Insertion Sort Performance Testing
print("\nRunning Insertion Sort on shuffled arrays\n")

var inputSize = 10
let array10 = Array<Int>.randomArray(size: inputSize, maxValue: 10)

var execTime = BenchTimer.measureBlock {
    _ = insertionSort(array10)
}
print("Average insertionSort() execution time for \(inputSize) elements: \(execTime.formattedTime)")

inputSize = 100
let array100 = Array<Int>.randomArray(size: inputSize, maxValue: 100)

execTime = BenchTimer.measureBlock {
    _ = insertionSort(array100)
}
print("Average insertionSort() execution time for \(inputSize) elements: \(execTime.formattedTime)")

inputSize = 1000
let array1000 = Array<Int>.randomArray(size: inputSize, maxValue: 1000)

execTime = BenchTimer.measureBlock {
    _ = insertionSort(array1000)
}
print("Average insertionSort() execution time for \(inputSize) elements: \(execTime.formattedTime)")

//: Insertion Sort Performance with Sorted Input
print("\nRunning Insertion Sort on already sorted arrays\n")

inputSize = 10
let incrementalArray10 = Array<Int>.incrementalArray(size: inputSize)

execTime = BenchTimer.measureBlock {
    _ = insertionSort(incrementalArray10)
}
print("Average insertionSort() execution time for \(inputSize) already sorted elements: \(execTime.formattedTime)")


inputSize = 100
let incrementalArray100 = Array<Int>.incrementalArray(size: inputSize)

execTime = BenchTimer.measureBlock {
    _ = insertionSort(incrementalArray100)
}
print("Average insertionSort() execution time for \(inputSize) already sorted elements: \(execTime.formattedTime)")

inputSize = 1000
let incrementalArray1000 = Array<Int>.incrementalArray(size: inputSize)

execTime = BenchTimer.measureBlock {
    _ = insertionSort(incrementalArray1000)
}
print("Average insertionSort() execution time for \(inputSize) already sorted elements: \(execTime.formattedTime)")

//: Selection Sort vs. Insertion Sort
print("\nInsertion Sort vs. Selection Sort with Shuffled Arrays\n")

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

inputSize = 1000
let random1000 = Array<Int>.randomArray(size: inputSize, maxValue: 1000)
execTime = BenchTimer.measureBlock {
    _ = insertionSort(random1000)
}
print("\nAverage insertionSort() execution time for \(inputSize) elements: \(execTime.formattedTime)")

execTime = BenchTimer.measureBlock {
    _ = selectionSort(random1000)
}
print("Average selectionSort() execution time for \(inputSize) elements: \(execTime.formattedTime)")


print("\nInsertion Sort vs. Selection Sort with Sorted Input\n")

inputSize = 10
let progressiveArray10 = Array<Int>.incrementalArray(size: inputSize)
execTime = BenchTimer.measureBlock {
    _ = insertionSort(progressiveArray10)
}
print("Average insertionSort() execution time for \(inputSize) elements: \(execTime.formattedTime)")

execTime = BenchTimer.measureBlock {
    _ = selectionSort(progressiveArray10)
}
print("Average selectionSort() execution time for \(inputSize) elements: \(execTime.formattedTime)")

inputSize = 100
let progressiveArray100 = Array<Int>.incrementalArray(size: inputSize)
execTime = BenchTimer.measureBlock {
    _ = insertionSort(progressiveArray100)
}
print("\nAverage insertionSort() execution time for \(inputSize) elements: \(execTime.formattedTime)")

execTime = BenchTimer.measureBlock {
    _ = selectionSort(progressiveArray100)
}
print("Average selectionSort() execution time for \(inputSize) elements: \(execTime.formattedTime)")

inputSize = 1000
let progressiveArray1000 = Array<Int>.incrementalArray(size: inputSize)
execTime = BenchTimer.measureBlock {
    _ = insertionSort(progressiveArray1000)
}
print("\nAverage insertionSort() execution time for \(inputSize) elements: \(execTime.formattedTime)")

execTime = BenchTimer.measureBlock {
    _ = selectionSort(progressiveArray1000)
}
print("Average selectionSort() execution time for \(inputSize) elements: \(execTime.formattedTime)")
