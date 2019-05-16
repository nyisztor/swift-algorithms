import Foundation

public extension Array where Element == Int {
    @inline(__always) func selectionSorted() -> Array {
        guard count > 1 else {
            return self
        }
        
        var result = self
        for index in 0..<(result.count - 1) {
            var indexLowest = index
            
            for forwardIndex in (index + 1)..<result.count {
                if result[forwardIndex] < result[indexLowest] {
                    indexLowest = forwardIndex
                }
            }
            
            if index != indexLowest {
                result.swapAt(index, indexLowest)
            }
        }
        return result
    }

    @inline(__always) func insertionSorted() -> Array {
        guard count > 1 else {
            return self
        }

        var result = self
        
        for sortedIndex in 1..<result.count {
            var backIndex = sortedIndex
            let temp = result[backIndex]
            
            while backIndex > 0 && temp < result[backIndex - 1] {
                result[backIndex] = result[backIndex - 1]                
                backIndex -= 1
            }
            result[backIndex] = temp
        }
        return result
    }

    
    @inline(__always) func bubbleSorted() -> Array {
        guard count > 1 else {
            return self
        }
        
        var result = self
        var isSwapped = false
        
        repeat {
            isSwapped = false
            for index in 1..<result.count {
                if result[index] < result[index - 1] {
                    result.swapAt((index - 1), index)
                    isSwapped = true
                }
            }
        } while isSwapped
        
        return result
    }
}

