//: **Introduction to Algorithms and Data Structures in Swift 5** - Source Code
//:
//: Get the course **[on Udemy using this discounted coupon](https://www.udemy.com/introduction-to-algorithms-in-swift/?couponCode=BESTPRICE)**
//:
//: The book version is available **[on iTunes](http://itunes.apple.com/us/book/id1345964250)** and **[Amazon](https://www.amazon.com/Introduction-Algorithms-Data-Structures-Swift-ebook/dp/B077D8MQ31)**
//:
//: _ _ _
//: ## Sum(N)
//: Sums up the first N natural numbers
//:
//: - Callout(Interested in Swift programming?):
//: Check out my **[Youtube channel](https://www.youtube.com/c/swiftprogrammingtutorials)**
//: my courses on **[Udemy](https://www.udemy.com/user/karolynyisztor/)**, **[Lynda](https://www.lynda.com/Karoly-Nyisztor/9655357-1.html)** and **[Pluralsight](https://www.pluralsight.com/profile/author/karoly-nyisztor)**.
//: Website **[www.leakka.com](http://www.leakka.com)**
//: ---

//: - Callout(Brute-force):
//: Just for demonstration purposes, *don't* use it in real code!
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

//: - Callout(Optimized Sum):
//: Sums up the first N natural numbers using the triangle numbers formula
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
    print("- \(i*step) elements: \n\t sum(n) \t\t\t \(sumTime.formattedTime) \n\t sumOptimized(n) \t \(sumOptimizedTime.formattedTime)")
}
