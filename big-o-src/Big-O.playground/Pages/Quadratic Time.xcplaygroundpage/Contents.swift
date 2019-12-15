//: **Introduction to Algorithms and Data Structures in Swift 5** - Source Code
//:
//: Get the course **[on Udemy using this discounted coupon](https://www.udemy.com/introduction-to-algorithms-in-swift/?couponCode=BESTPRICE)**
//:
//: The book version is available **[on iTunes](http://itunes.apple.com/us/book/id1345964250)** and **[Amazon](https://www.amazon.com/Introduction-Algorithms-Data-Structures-Swift-ebook/dp/B077D8MQ31)**
//:
//: _ _ _
//: ## Quadratic Time - O(n^2)
//: Demo to demonstrate quadratic time complexity
//:
//: - Callout(Interested in Swift programming?):
//: Check out my **[Youtube channel](https://www.youtube.com/c/swiftprogrammingtutorials)**
//: my courses on **[Udemy](https://www.udemy.com/user/karolynyisztor/)**, **[Lynda](https://www.lynda.com/Karoly-Nyisztor/9655357-1.html)** and **[Pluralsight](https://www.pluralsight.com/profile/author/karoly-nyisztor)**.
//: Website **[www.leakka.com](http://www.leakka.com)**
//: ---

import Foundation

/// Generates multiplication tables
func multTable(_ size: Int) -> [Int] {
    guard size > 0 else {
        return [Int]()
    }

    var table = [Int]()
    let array = [Int](1...size)
    
    for row in 0..<size {
        for column in 0..<size {
            let val = array[row] * array[column]
            // assign
            table.append(val)
        }
    }
    return table
}

/// Generates multiplication tables + tweaking
func multTableOptimized(_ size: Int) -> [Int] {
    guard size > 0 else {
        return [Int]()
    }
    // Performance optimization:
    // - initialize the table to its max capacity
    // - assign by index instead of calling append() to add elements
    var table = [Int](repeating: 0, count: size * size)
    let array = [Int](1...size)
    
    for row in 0..<size {
        for column in 0..<size {
            let val = array[row] * array[column]
            // assign
            table[row * size + column] = val
        }
    }
    return table
}

func multTable2D(_ size: Int) -> [[Int]] {
    // initialize the table to its max size
    var table = [[Int]](repeating: [Int](repeating: 0, count: size), count: size)
    let array = [Int](1...size)
    
    for row in 0..<size {
        for column in 0..<size {
            let val = array[row] * array[column]
            // assign
            table[row][column] = val
        }
    }
    return table
}

func multTableMatrix(_ size: Int) -> Matrix<Int> {
    // initialize the table to its max size
    var table = Matrix(rows: size, columns: size, repeating: 0)
    //var table = [[Int]](repeating: [Int](repeating: 0, count: size), count: size)
    let array = [Int](1...size)
    
    for row in 0..<size {
        for column in 0..<size {
            let val = array[row] * array[column]
            // assign
            table[row, column] = val
        }
    }
    return table
}
//: Multiplication Table - O(n^2)
let sizes = [10, 20, 30]


print("\nAverage execution time for multiplication table")
print("-----------------------------------------------")

for i in 0..<sizes.count {
    let size = sizes[i]
    let execTime = BenchTimer.measureBlock {
        _ = multTable(size)
    }
    
    print(String(format: "Size %d -> %@", size, execTime.formattedTime))
}

print("\nAverage execution time for multiplication table optimized")
print("---------------------------------------------------------")

for i in 0..<sizes.count {
    let size = sizes[i]
    let execTime = BenchTimer.measureBlock {
        _ = multTableOptimized(size)
    }
    
    print(String(format: "Size %d -> %@", size, execTime.formattedTime))
}

print("\nAverage execution time for multiplication table with 2D array")
print("-------------------------------------------------------------")

for i in 0..<sizes.count {
    let size = sizes[i]
    let execTime = BenchTimer.measureBlock {
        _ = multTable2D(size)
    }
    
    print(String(format: "Size %d -> %@", size, execTime.formattedTime))
}

print("\nAverage execution time for multiplication table with custom Matrix")
print("------------------------------------------------------------------")

for i in 0..<sizes.count {
    let size = sizes[i]
    let execTime = BenchTimer.measureBlock {
        _ = multTableMatrix(size)
    }
    
    print(String(format: "Size %d -> %@", size, execTime.formattedTime))
}
//: [Previous: Linear Time](@previous)

