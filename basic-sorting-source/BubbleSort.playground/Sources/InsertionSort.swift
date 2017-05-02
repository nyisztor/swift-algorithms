/*:
 # Introduction to Algorithms in Swift
 ## Source Code
 
 I’m offering lifetime access to the course for 75% off.
 Be sure to take advantage of this discount while it lasts!
 
 [**Here is where you can get your 75% off discount**](https://www.udemy.com/introduction-to-algorithms-in-swift/?couponCode=BESTPRICE)
 _ _ _
 */
import Foundation

public func insertionSort(_ input: [Int]) -> [Int] {
    var result = input

    let count = result.count
    for sortedIndex in 1 ..< count {
        var backIndex = sortedIndex

        while backIndex > 0 && result[backIndex] < result[backIndex - 1] {
            swap(&result[backIndex - 1], &result[backIndex])
            // step backwards
            backIndex -= 1
        }
    }
    return result
}
