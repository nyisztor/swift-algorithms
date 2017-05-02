/*:
 # Introduction to Algorithms in Swift
 ## Source Code
 
 I’m offering lifetime access to the course for 75% off.
 Be sure to take advantage of this discount while it lasts!
 
 [**Here is where you can get your 75% off discount**](https://www.udemy.com/introduction-to-algorithms-in-swift/?couponCode=BESTPRICE)
 _ _ _
 */
//: Equilibrium Index
import Foundation

// O(n^2)
func equilibrium(_ numbers: [Int]) -> [Int]? {
    guard numbers.count > 1 else {
        return nil
    }
    
    var indices = [Int]()
    
    var left = 0
    var right = 0
    
    let count = numbers.count
    
    for i in 0..<count {
        left = 0
        right = 0
        
        for j in 0..<i {
            left = left + numbers[j]
        }
        
        for j in i+1..<count {
            right = right + numbers[j]
        }
        
        if left == right {
            indices.append(i)
        }
    }
    
    return indices.isEmpty ? nil : indices
}
//: Optimized Equilibrium Index Algorithm
// O(n)
func equilibriumOptimized(_ numbers: [Int]) -> [Int]? {
    var indices = [Int]()
    
    var leftSum = 0
    var sum = numbers.reduce(0, +)
    let count = numbers.count
    
    for i in 0..<count {
        sum = sum - numbers[i]
        
        if leftSum == sum {
            indices.append(i)
        }
        
        leftSum = leftSum + numbers[i]
    }
    
    return indices.isEmpty ? nil : indices
}
//: equilibrium() vs. equilibriumOptimized()
func generateArray(size: Int, min: Int, max: Int) -> [Int] {
    var result = [Int](repeating: 0, count:size)
    
    for i in 0..<size {
        result[i] = min + Int(arc4random_uniform(UInt32(max - min + 1)))
    }
    
    return result
}

let size = 200
let maxValue = 10

let array = generateArray(size: size, min: -maxValue, max: maxValue)


if let result = equilibrium(array) {
    print(result)
} else {
    print("No equilibrium index found!")
}

var execTime = BenchTimer.measureBlock {
    _ = equilibrium(array)
}

print("Average equilibrium() execution time for \(array.count) elements: \(execTime.formattedTime)")

if let result = equilibriumOptimized(array) {
    print(result)
} else {
    print("No equilibrium index found!")
}

execTime = BenchTimer.measureBlock {
    _ = equilibriumOptimized(array)
}

print("Average equilibriumOptimized() execution time for \(array.count) elements: \(execTime.formattedTime)")

