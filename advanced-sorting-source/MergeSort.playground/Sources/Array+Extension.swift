/*:
 # Introduction to Algorithms in Swift
 ## Source Code
 
 I’m offering lifetime access to the course for 75% off.
 Be sure to take advantage of this discount while it lasts!
 
 [**Here is where you can get your 75% off discount**](https://www.udemy.com/introduction-to-algorithms-in-swift/?couponCode=BESTPRICE)
 _ _ _
 */
import Foundation

extension Array {
    static public func randomArray(size: Int, maxValue: UInt) -> [Int] {
        var result = [Int](repeating: 0, count:size)
        
        for i in 0 ..< size {
            result[i] = Int(arc4random_uniform(UInt32(maxValue)))
        }
        
        return result
    }
    
    static public func incrementalArray(size: Int) -> [Int] {
        var result = [Int](repeating: 0, count:size)
        
        for i in 0 ..< size {
            result[i] = i
        }
        
        return result
    }
    
    static public func reverseOrderedArray(size: Int) -> [Int] {
        var result = [Int](repeating: 0, count:size)
        
        for i in 0 ..< size {
            result[i] = size - i
        }
        
        return result
    }
    
    static public func partiallySortedArray(size: Int, maxValue: UInt) -> [Int] {
        var result = [Int](repeating: 0, count: size)
        
        let half = size / 2
        // first half sorted
        for i in 0 ..< half {
            result[i] = i
        }
        // second half random
        for i in half ..< size {
            result[i] = Int(arc4random_uniform(UInt32(maxValue)))
        }
        
        return result
    }
}
