import Foundation

/// Generates random arrays of given size
///
/// - Parameters:
///   - size: size of the resulting array
/// - Returns: array with random elements
public extension Array where Element == Int {
    static func generateRandom(size: Int) -> [Int] {
        guard size > 0 else {
            return [Int]()
        }
        return Array(0..<size).shuffled()
    }    
}
