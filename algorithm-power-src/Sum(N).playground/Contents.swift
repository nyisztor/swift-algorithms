/*:
 # Introduction to Algorithms in Swift
 ## Source Code
 
 I’m offering lifetime access to the course for 75% off.
 Be sure to take advantage of this discount while it lasts!
 
 [**Here is where you can get your 75% off discount**](https://www.udemy.com/introduction-to-algorithms-in-swift/?couponCode=BESTPRICE)
 _ _ _
 */
//: Sum(N)
// !!! Just for demonstration purposes, *don't* use it in real code!
/// Sums up the first N natural numbers using a brute force approach
func sum(_ n: UInt) -> UInt {
    var result: UInt = 0
    for i in 1...n {
        result += i
    }
    return result
}

let step = 100

var execTime: Double
for i in 1...10 {
    execTime = BenchTimer.measureBlock {
        _ = sum(UInt(i*step))
    }
    print("Average sum(n) execution time for \(i*step) elements: \(execTime.formattedTime)")
}
//: Optimized sum()
/// Sums up the first N natural numbers using the traingle numbers formula
/// see https://en.wikipedia.org/wiki/Triangular_number
func sumOptimized(_ n: UInt) -> UInt {
    return n * (n + 1) / 2
}
//: sum(n) vs. sumOptimized(n)
print("\nsum() vs. sumOptimized()")

var sumTime, sumOptimizedTime: Double

for i in 1...10 {
    // Measure sum() function performance
    sumTime = BenchTimer.measureBlock {
        _ = sum(UInt(i*step))
    }
    // Measure sumOptimized() function performance
    sumOptimizedTime = BenchTimer.measureBlock {
        _ = sumOptimized(UInt(i*step))
    }
    print("- \(i*step) elements: \n\t sum(n) \t\t \(sumTime.formattedTime) \n\t sumOptimized(n) \t \(sumOptimizedTime.formattedTime)")
}
