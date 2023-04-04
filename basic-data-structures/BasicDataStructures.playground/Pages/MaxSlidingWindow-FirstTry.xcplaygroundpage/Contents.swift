import Foundation

// Time complexity O(n * k)
func findSlidingWindowMax(_ numbers: [Int], windowSize: Int) -> [Int] {
    var result = [Int]()
    
    guard numbers.isEmpty == false,
          windowSize >= 1,
          windowSize <= numbers.count else {
        return result
    }
    
    switch (windowSize) {
    case 1:
        result = numbers
    case numbers.count:
        if let max = numbers.max() {
            result = [max]
        }
    default:
        for i in 0...numbers.count - windowSize {
            let window = Array(numbers[i..<i + windowSize])
            if let maxElement = window.max() {
                result.append(maxElement)
            }
        }
    }
    
    return result
}


let inputArray = [1, 3, -1, -3, 5, 3, 6, 7]

let result = findSlidingWindowMax(inputArray, windowSize: 3)
print(result)
