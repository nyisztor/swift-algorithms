import Foundation

public extension Array where Element == Int {
    // Checks whether the first element of the array is zero
    func startsWithZero() -> Bool {
        guard self.count != 0 else {
            return false
        }
        return self.first == 0 ? true : false
    }
}
