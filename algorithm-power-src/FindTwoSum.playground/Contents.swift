//: **Introduction to Algorithms and Data Structures in Swift 5** - Source Code
//:
//: Get the course **[on Udemy using this discounted coupon](https://www.udemy.com/introduction-to-algorithms-in-swift/?couponCode=BESTPRICE)**
//:
//: The book version is available **[on iTunes](http://itunes.apple.com/us/book/id1345964250)** and **[Amazon](https://www.amazon.com/Introduction-Algorithms-Data-Structures-Swift-ebook/dp/B077D8MQ31)**
//:
//: _ _ _
//: ## Pair Matching
//: Write a function that, given an array and a target sum, returns zero-based indices of any two distinct elements whose sum is equal to the target sum. If there are no such elements, the function should return nil.
//: For example, findTwoSum(new int[] { 1, 3, 5, 7, 9 }, 12) should return any of the following tuples of indices:
//:
//: 1, 4 (3 + 9 = 12)
//: 2, 3 (5 + 7 = 12)
//: 3, 2 (7 + 5 = 12)
//: 4, 1 (9 + 3 = 12)
//:
//: - Callout(Interested in Swift programming?):
//: Check out my **[Youtube channel](https://www.youtube.com/c/swiftprogrammingtutorials)**
//: my courses on **[Udemy](https://www.udemy.com/user/karolynyisztor/)**, **[Lynda](https://www.lynda.com/Karoly-Nyisztor/9655357-1.html)** and **[Pluralsight](https://www.pluralsight.com/profile/author/karoly-nyisztor)**.
//: Website **[www.leakka.com](http://www.leakka.com)**
//: ---
import Foundation
//: - Callout(TwoSum):
//: O(n^2) running time
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

// Example usage:
/*
let array = [0,2,2,3,4]
if let indices = findTwoSum(array, target: 4) {
    print(indices)
} else {
    print("No pairs found")
}*/

//: - Callout(TwoSum Optimized):
//: O(n) running time

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

let numbers = Array.generateRandom(size: size, maxValue: maxValue)
var indices: (Int, Int)?
var execTime = BenchTimer.measureBlock {
    indices = findTwoSum(numbers, target: target)
}
print("Average findTwoSum execution time for \(size) elements: \(execTime.formattedTime)")

execTime = BenchTimer.measureBlock {
    indices = findTwoSumOptimized(numbers, target: target)
}
print("Average findTwoSumOptimized execution time for \(size) elements: \(execTime.formattedTime)")

print(indices ?? "No indices found")
