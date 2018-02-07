//: **Introduction to Algorithms and Data Structures in Swift 4** - Source Code
//:
//: Get the course **[on Udemy using this discounted coupon](https://www.udemy.com/introduction-to-algorithms-in-swift/?couponCode=BESTPRICE)**
//:
//: The book version is available **[on iTunes](http://itunes.apple.com/us/book/id1345964250)** and **[Amazon](https://www.amazon.com/Introduction-Algorithms-Data-Structures-Swift-ebook/dp/B077D8MQ31)**
//:
//: _ _ _
//: ## Constant Time - O(1)
//: Demo to demonstrate constant time complexity
//:
//: - Callout(Interested in Swift programming?):
//: Check out my **[Youtube channel](https://www.youtube.com/c/swiftprogrammingtutorials)**
//: my courses on **[Udemy](https://www.udemy.com/user/karolynyisztor/)**, **[Lynda](https://www.lynda.com/Karoly-Nyisztor/9655357-1.html)** and **[Pluralsight](https://www.pluralsight.com/profile/author/karoly-nyisztor)**.
//: Website **[www.leakka.com](http://www.leakka.com)**
//: ---

import Foundation
//: Benchmark Utility
import QuartzCore

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
//: Array Element Check - O(1)
print("Array element check performance measurements")

// Checks whether the first element of the array is zero
func startsWithZero(array: [Int]) -> Bool {
    guard array.count != 0 else {
        return false
    }
    return array.first == 0 ? true : false
}

var smallArray = [1,0,0]
var exectime = BenchTimer.measureBlock {
    _ = startsWithZero(array: smallArray)
}
print("Average startsWithZero() execution time for array with \(smallArray.count) elements: \(exectime.formattedTime)")

var mediumArray = Array<Int>(repeating: 0, count: 10000)
exectime = BenchTimer.measureBlock {
    _ = startsWithZero(array: mediumArray)
}
print("Average startsWithZero() execution time for array with \(mediumArray.count) elements: \(exectime.formattedTime)")

var hugeArray = Array<Int>(repeating: 0, count: 1000000)
exectime = BenchTimer.measureBlock {
    _ = startsWithZero(array: hugeArray)
}
print("Average startsWithZero() execution time for array with \(hugeArray.count) elements: \(exectime.formattedTime)")

//: Dictionary Search - O(1)
print("\nDictionary lookup performance measurements")

let smallDictionary = ["one": 1, "two": 2, "three": 3]
exectime = BenchTimer.measureBlock {
    _ = smallDictionary["two"]
}
print("Average lookup time in a dictionary with \(smallDictionary.count) elements: \(exectime.formattedTime)")

// Generates dictionaries of given size
func generateDict(size: Int) -> Dictionary<String, Int> {
    var result = Dictionary<String, Int>()
    guard size > 0 else {
        return result
    }
    
    for i in 0..<size {
        let key = String(i)
        result[key] = i
    }
    return result
}

let mediumDict = generateDict(size: 500)
exectime = BenchTimer.measureBlock {
    _ = mediumDict["324"]
}
print("Average lookup time in a dictionary with \(mediumDict.count) elements: \(exectime.formattedTime)")

let hugeDict = generateDict(size: 100000)
exectime = BenchTimer.measureBlock {
    _ = hugeDict["55555"]
}
print("Average lookup time in a dictionary with \(hugeDict.count) elements: \(exectime.formattedTime)")

//: [Next: Linear Time](@next)


