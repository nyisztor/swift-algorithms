import Foundation
// Time complexity O(n)
func findSlidingWindowMax(_ numbers: [Int], windowSize: Int) -> [Int] {
    var deque = Deque<Int>()
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
        for i in 0..<numbers.count {            
            while !deque.isEmpty, let last = deque.peekBack, numbers[i] >= last {
                deque.dequeueBack()
            }
            
            deque.enqueueBack(numbers[i])
                        
            let windowStartIndex = i - windowSize + 1
            // check if a complete window has formed
            if windowStartIndex >= 0 {
                if let maxElement = deque.peekFront {
                    result.append(maxElement)
                                        
                    if numbers[windowStartIndex] == maxElement {
                        deque.dequeueFront()
                    }
                }
            }
        }
    }
    return result
}

let inputArray = [1, 3, -1, -3, 5, 3, 6, 7]

let result = findSlidingWindowMax(inputArray, windowSize: 3)
print(result)
