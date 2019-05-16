import Foundation

public extension Array where Element == Int {
    static func generateRandom(size: Int, min: Int, max: Int) -> [Int] {
        var result = [Int](repeating: 0, count:size)
        
        for i in 0..<size {
            result[i] = min + Int(arc4random_uniform(UInt32(max - min + 1)))
        }
        
        return result
    }
}
