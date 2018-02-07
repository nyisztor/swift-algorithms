//: **Introduction to Algorithms and Data Structures in Swift 4** - Source Code
//:
//: Get the course **[on Udemy using this discounted coupon](https://www.udemy.com/introduction-to-algorithms-in-swift/?couponCode=BESTPRICE)**
//:
//: The book version is available **[on iTunes](http://itunes.apple.com/us/book/id1345964250)** and **[Amazon](https://www.amazon.com/Introduction-Algorithms-Data-Structures-Swift-ebook/dp/B077D8MQ31)**
//:
//: _ _ _
//: ## Constant Time - O(n)
//: Demo to demonstrate linear time complexity
//:
//: - Callout(Interested in Swift programming?):
//: Check out my **[Youtube channel](https://www.youtube.com/c/swiftprogrammingtutorials)**
//: my courses on **[Udemy](https://www.udemy.com/user/karolynyisztor/)**, **[Lynda](https://www.lynda.com/Karoly-Nyisztor/9655357-1.html)** and **[Pluralsight](https://www.pluralsight.com/profile/author/karoly-nyisztor)**.
//: Website **[www.leakka.com](http://www.leakka.com)**
//: ---

import UIKit

public class BenchTimer {
    public static func measureBlock(closure:() -> Void) -> CFTimeInterval {
        let runCount = 10
        var executionTimes = Array<Double>(repeating: 0.0, count: runCount)
        for i in 0..<runCount {
            let startTime = CACurrentMediaTime()
            closure()
            let endTime = CACurrentMediaTime()
            let execTime = endTime - startTime
            executionTimes[i] = execTime
        }
        return (executionTimes.reduce(0, +)) / Double(runCount)
    }
}

/*
 Displays formatted time
 This property provides a concise string representation of the time interval value which also includes the right unit of time, which ranges from ns to s.
 */
public extension CFTimeInterval {
    public var formattedTime: String {
        return self >= 1000 ? String(Int(self)) + "s"
            : self >= 1 ? String(format: "%.3gs", self)
            : self >= 1e-3 ? String(format: "%.3gms", self * 1e3)
            : self >= 1e-6 ? String(format: "%.3gµs", self * 1e6)
            : self < 1e-9 ? "0s"
            : String(format: "%.3gns", self * 1e9)
    }
}
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

//: [Previous: Constant Time](@previous) | [Next: Quadratic Time](@next)

