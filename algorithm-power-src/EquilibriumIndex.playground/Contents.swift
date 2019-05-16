//: **Introduction to Algorithms and Data Structures in Swift 5** - Source Code
//:
//: Get the course **[on Udemy using this discounted coupon](https://www.udemy.com/introduction-to-algorithms-in-swift/?couponCode=BESTPRICE)**
//:
//: The book version is available **[on iTunes](http://itunes.apple.com/us/book/id1345964250)** and **[Amazon](https://www.amazon.com/Introduction-Algorithms-Data-Structures-Swift-ebook/dp/B077D8MQ31)**
//:
//: _ _ _
//: ## Equilibrium Index
//: An equilibrium index of a sequence is an index into the sequence such that the sum of elements at lower indices is equal to the sum of elements at higher indices.
//:
//: - Callout(Interested in Swift programming?):
//: Check out my **[Youtube channel](https://www.youtube.com/c/swiftprogrammingtutorials)**
//: my courses on **[Udemy](https://www.udemy.com/user/karolynyisztor/)**, **[Lynda](https://www.lynda.com/Karoly-Nyisztor/9655357-1.html)** and **[Pluralsight](https://www.pluralsight.com/profile/author/karoly-nyisztor)**.
//: Website **[www.leakka.com](http://www.leakka.com)**
//: ---
import Foundation

//: - Callout(First Attempt):
//: O(n^2)
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

//: - Callout(Optimized Equilibrium Index Algorithm):
//: O(n)
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
let size = 200
let maxValue = 10

let array = Array.generateRandom(size: size, min: -maxValue, max: maxValue)


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

