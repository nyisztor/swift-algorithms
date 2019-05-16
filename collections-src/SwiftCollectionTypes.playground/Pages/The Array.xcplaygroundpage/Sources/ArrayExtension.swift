import Foundation

// Array extension for index bounds check
public extension Array where Element == Int {
    subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}

