/*:
 # Introduction to Algorithms in Swift
 ## Source Code

 I’m offering lifetime access to the course for 75% off.
 Be sure to take advantage of this discount while it lasts!
 
 [**Here is where you can get your 75% off discount**](https://www.udemy.com/introduction-to-algorithms-in-swift/?couponCode=BESTPRICE)
 _ _ _
 */
//: Constant Time - O(1)
import Foundation
//: Array Element Check - O(1)
print("Array element check performance measurements")

/// Checks whether the first element of the array is zero
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

/// Generates dictionaries of given size
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
