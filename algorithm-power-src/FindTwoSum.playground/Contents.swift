/*:
 # Introduction to Algorithms in Swift
 ## Source Code
 
 I’m offering lifetime access to the course for 75% off.
 Be sure to take advantage of this discount while it lasts!
 
 [**Here is where you can get your 75% off discount**](https://www.udemy.com/introduction-to-algorithms-in-swift/?couponCode=BESTPRICE)
 _ _ _
 */
//: Pair Matching
/*:
 _ _ _
 Write a function that, given an array and a target sum, returns zero-based indices of any two distinct elements whose sum is equal to the target sum. If there are no such elements, the function should return nil.
 For example, findTwoSum(new int[] { 1, 3, 5, 7, 9 }, 12) should return any of the following tuples of indices:

 1, 4 (3 + 9 = 12)
 2, 3 (5 + 7 = 12)
 3, 2 (7 + 5 = 12)
 4, 1 (9 + 3 = 12)
*/
import Foundation

func generateArray(size: Int, maxValue: Int) -> [Int] {
    var result = [Int](repeating: 0, count:size)
    
    for i in 0..<size {
        result[i] = Int(arc4random_uniform(UInt32(maxValue)))
    }
    
    return result
}
//: TwoSum
// O(n^2) running time
func findTwoSum(_ array: [Int], target: Int) -> (Int, Int)? {
    guard array.count > 1 else {
        return nil
    }
    
    for i in 0..<array.count {
        let left = array[i]
        for j in (i + 1)..<array.count {
            let right = array[j]
            if left + right == target {
                return (i, j)
            }
        }
    }
    return nil
}

let array = [0,2,2,3,4]
if let indices = findTwoSum(array, target: 4) {
    print(indices)
} else {
    print("No pairs found")
}
//: TwoSum Optimized
// O(n) running time
func findTwoSumOptimized(_ array: [Int], target: Int) -> (Int, Int)? {
    guard array.count > 1 else {
        return nil
    }
    
    var diffs = Dictionary<Int, Int>()
    
    for i in 0..<array.count {
        let left = array[i]
        
        let right = target - left
        
        if let foundIndex = diffs[right] {
            return (i, foundIndex)
        } else {
            diffs[left] = i
        }
    }
    
    return nil
}
//: Performance tests
let size = 5000
let target = 100
let maxValue = 60

let numbers = generateArray(size: size, maxValue: maxValue)

var execTime = BenchTimer.measureBlock {
    _ = findTwoSum(numbers, target: target)
}

print("Average findTwoSum execution time for \(size) elements: \(execTime.formattedTime)")

execTime = BenchTimer.measureBlock {
    _ = findTwoSumOptimized(numbers, target: target)
}

print("Average findTwoSumOptimized execution time for \(size) elements: \(execTime.formattedTime)")
