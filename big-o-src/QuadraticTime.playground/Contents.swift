/*:
 # Introduction to Algorithms in Swift
 ## Source Code
 
 I’m offering lifetime access to the course for 75% off.
 Be sure to take advantage of this discount while it lasts!
 
 [**Here is where you can get your 75% off discount**](https://www.udemy.com/introduction-to-algorithms-in-swift/?couponCode=BESTPRICE)
 _ _ _
 */
//: O(n^2)

import Foundation


/// Generates multiplication tables
func multTable(size: Int) -> [Int] {
    var table = [Int]()
    let array = [Int](1...size)
    
    for i in 0..<array.count {
        for j in 0..<array.count {
            let val = array[i]*array[j]
            table.append(val)
        }
    }
    return table
}
//: Performance tests
let sizes = [10, 20, 30]

for i in 0..<sizes.count {
    let size = sizes[i]
    let execTime = BenchTimer.measureBlock {
        _ = multTable(size: size)
    }
    print("Average multTable() execution time for \(size) elements: \(execTime.formattedTime)")
}
