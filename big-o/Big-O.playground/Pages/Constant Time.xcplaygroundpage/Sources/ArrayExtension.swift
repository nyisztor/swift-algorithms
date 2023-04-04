import Foundation

public extension Array where Element == Int {
    // Checks if the first element in an array of integers is 0
    func startsWithZero() -> Bool {
        guard self.isEmpty == false else {
            return false
        }
        return self.first == 0 ? true : false
    }
}
