import Foundation

public func insertionSort(_ input: [Int]) -> [Int] {
    var result = input

    let count = result.count
    for sortedIndex in 1 ..< count {
        var backIndex = sortedIndex

        while backIndex > 0 && result[backIndex] < result[backIndex - 1] {
            result.swapAt((backIndex - 1), backIndex)
            // step backwards
            backIndex -= 1
        }
    }
    return result
}
