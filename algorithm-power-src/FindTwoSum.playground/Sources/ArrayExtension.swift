import Foundation

public extension Array where Element == Int {
    static func generateRandom(size: Int, maxValue: Int) -> [Int] {
        var result = [Int](repeating: 0, count:size)
        
        for i in 0..<size {
            result[i] = Int(arc4random_uniform(UInt32(maxValue)))
        }
        
        return result
    }
}
