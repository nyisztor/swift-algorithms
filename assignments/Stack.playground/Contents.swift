//: **Introduction to Algorithms and Data Structures in Swift 5** - Source Code
//:
//: Get the course **[on Udemy using this discounted coupon](https://www.udemy.com/introduction-to-algorithms-in-swift/?couponCode=BESTPRICE)**
//:
//: The book version is available **[on iTunes](http://itunes.apple.com/us/book/id1345964250)** and **[Amazon](https://www.amazon.com/Introduction-Algorithms-Data-Structures-Swift-ebook/dp/B077D8MQ31)**
//:
//: _ _ _
//: ## Assignment
//: An Array-based Generic Stack Implementation
//:
//: - Callout(Interested in Swift programming?):
//: Check out my **[Youtube channel](https://www.youtube.com/c/swiftprogrammingtutorials)**
//: my courses on **[Udemy](https://www.udemy.com/user/karolynyisztor/)**, **[Lynda](https://www.lynda.com/Karoly-Nyisztor/9655357-1.html)** and **[Pluralsight](https://www.pluralsight.com/profile/author/karoly-nyisztor)**.
//: Website **[www.leakka.com](http://www.leakka.com)**
//: ---
import Foundation


struct Stack<T> {
    private var elements = [T]()
    
    mutating func push(_ element: T) {
        elements.append(element)
    }
    
    mutating func pop() -> T? {
        return elements.popLast()
    }

    func peek() -> T? {
        return elements.last
    }

    var count: Int {
        return elements.count
    }
    
    var isEmpty: Bool {
        return elements.isEmpty
    }
}
//: Test
var intStack = Stack<Int>()

intStack.push(1)
print("push() ->", intStack)
print("Stack size: \(intStack.count)")

intStack.push(2)
print("push() ->", intStack)
print("Stack size: \(intStack.count)")

intStack.push(3)
print("push() ->", intStack)
print("Stack size: \(intStack.count)")

print("peek() ->", intStack.peek() ?? "Stack is empty")
print("Stack size: \(intStack.count)")

print("pop() ->", intStack.pop() ?? "Stack is empty")
print("Stack size: \(intStack.count)")

print("pop() ->", intStack.pop() ?? "Stack is empty")
print("Stack size: \(intStack.count)")

print("pop() ->", intStack.pop() ?? "Stack is empty")
print("Stack size: \(intStack.count)")

intStack.pop()
print(intStack)
print("Stack size: \(intStack.count)")

