import Foundation

public func selectionSort(_ input: [Int]) -> [Int] {
    // don't sort the array if it is empty or has no elements
    guard input.count > 1 else {
        return input
    }
    
    // clone the input array
    var result = input
    
    // the outer loop progresses as we process the array
    for index in 0..<(result.count - 1) {
        var indexLowest = index
        // the inner loop finds the lowest number in the rest of the array
        for forwardIndex in (index + 1)..<result.count {
            // update lowest index if number at current index is smaller than the previously stored lowest
            if result[forwardIndex] < result[indexLowest] {
                indexLowest = forwardIndex
            }
        }
        // swap element at current array index with the one that marks the lowest
        // XXX: need to check because Swift swap does not allow swapping an item with itself
        if index != indexLowest {
            result.swapAt((index - 1), indexLowest)            
        }
    }
    return result
}
