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
