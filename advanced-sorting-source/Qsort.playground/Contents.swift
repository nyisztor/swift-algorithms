/*:
 # Introduction to Algorithms in Swift
 ## Source Code
 
 I’m offering lifetime access to the course for 75% off.
 Be sure to take advantage of this discount while it lasts!
 
 [**Here is where you can get your 75% off discount**](https://www.udemy.com/introduction-to-algorithms-in-swift/?couponCode=BESTPRICE)
 _ _ _
 */
//: Quicksort
import Foundation

func qsort(_ input: [Int]) -> [Int] {
    guard input.count > 1 else {
        return input
    }
    
    let pivotIndex = input.count / 2
    let pivot = input[pivotIndex]
    
    let less = input.filter {$0 < pivot}
    let equal = input.filter {$0 == pivot}
    let greater = input.filter {$0 > pivot}
    
    return qsort(less) + equal + qsort(greater)
}
//: Test
let numbers = [0, 9, 6, 2, 3, 2, 1, 3]
let qsorted = qsort(numbers)
print(qsorted)
