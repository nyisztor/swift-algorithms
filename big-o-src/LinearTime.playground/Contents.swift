/*:
 # Introduction to Algorithms in Swift
 ## Source Code
 
 I’m offering lifetime access to the course for 75% off.
 Be sure to take advantage of this discount while it lasts!
 
 [**Here is where you can get your 75% off discount**](https://www.udemy.com/introduction-to-algorithms-in-swift/?couponCode=BESTPRICE)
 _ _ _
 */
//: Linear Time - O(n)
import Foundation
//: Linear Time
/// Generates random arrays of given size
///
/// - Parameters:
///   - size: size of the resulting array
///   - maxValue: the biggest Int value
/// - Returns: array with random elements
func generateRandomArray(size: Int, maxValue: UInt32) -> [Int] {
    guard size > 0 else {
        return [Int]()
    }
    var result = [Int](repeating: 0, count: size)
    for i in 0..<size {
        result[i] = Int(arc4random_uniform(maxValue))
    }
    return result
}

/// Sums up the numbers from the input array
func sum(array: [Int]) -> Int {
    var result = 0
    for i in 0..<array.count {
        result += array[i]
    }
    return result
}
//: Performance tests
print("Array sum() performance tests")
let array100 = generateRandomArray(size: 100, maxValue: UInt32.max)
var execTime = BenchTimer.measureBlock {
    _ = sum(array: array100)
}
print("Average sum() execution time for \(array100.count) elements: \(execTime.formattedTime)")

let array1000 = generateRandomArray(size: 1000, maxValue: UInt32.max)
execTime = BenchTimer.measureBlock {
    _ = sum(array: array1000)
}
print("Average sum() execution time for \(array1000.count) elements: \(execTime.formattedTime)")

let array10000 = generateRandomArray(size: 10000, maxValue: UInt32.max)
execTime = BenchTimer.measureBlock {
    _ = sum(array: array10000)
}
print("Average sum() execution time for \(array10000.count) elements: \(execTime.formattedTime)")


/// Returns the number of odd and even elements from the input array
func countOddEven(array: [Int]) -> (even: UInt, odd: UInt) {
    var even: UInt = 0
    var odd: UInt = 0
    
    for elem in array {
        if elem % 2 == 0 {
            even += 1
        } else {
            odd += 1
        }
    }
    return (even, odd)
}

print("\nArray countOddEven() performance tests")
execTime = BenchTimer.measureBlock {
    _ = countOddEven(array: array100)
}
print("Average countOddEven() execution time for \(array100.count) elements: \(execTime.formattedTime)")


execTime = BenchTimer.measureBlock {
    _ = countOddEven(array: array1000)
}
print("Average countOddEven() execution time for \(array1000.count) elements: \(execTime.formattedTime)")

execTime = BenchTimer.measureBlock {
    _ = countOddEven(array: array10000)
}
print("Average countOddEven() execution time for \(array10000.count) elements: \(execTime.formattedTime)")
