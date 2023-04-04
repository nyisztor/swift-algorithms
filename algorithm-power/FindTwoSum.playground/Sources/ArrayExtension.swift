import Foundation

public extension Array where Element == Int {
    static func generateRandom(size: Int, maxValue: Int) -> [Int] {
        guard size > 0 else {
            return [Int]()
        }
        return Array(0..<size).shuffled()
    }
}
