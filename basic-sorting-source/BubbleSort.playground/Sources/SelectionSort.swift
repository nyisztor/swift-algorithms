/*:
 # Introduction to Algorithms in Swift
 ## Source Code
 
 I’m offering lifetime access to the course for 75% off.
 Be sure to take advantage of this discount while it lasts!
 
 [**Here is where you can get your 75% off discount**](https://www.udemy.com/introduction-to-algorithms-in-swift/?couponCode=BESTPRICE)
 _ _ _
 */
import Foundation

public func selectionSort(_ input: [Int]) -> [Int] {
    guard input.count > 1 else {
        return input
    }
    
    var result = input
    for index in 0..<(result.count - 1) {
        var indexLowest = index
        
        for forwardIndex in (index + 1)..<result.count {
            if result[forwardIndex] < result[indexLowest] {
                indexLowest = forwardIndex
            }
        }
        if index != indexLowest {
            swap(&result[index], &result[indexLowest])
        }
    }
    return result
}
