//: **Introduction to Algorithms and Data Structures in Swift 5** - Source Code
//:
//: Get the course **[on Udemy using this discounted coupon](https://www.udemy.com/introduction-to-algorithms-in-swift/?couponCode=BESTPRICE)**
//:
//: The book version is available **[on iTunes](http://itunes.apple.com/us/book/id1345964250)** and **[Amazon](https://www.amazon.com/Introduction-Algorithms-Data-Structures-Swift-ebook/dp/B077D8MQ31)**
//:
//: _ _ _
//: ## Assignment
//: The Fizz-Buzz Algorithm
//:
//: - Callout(Interested in Swift programming?):
//: Check out my **[Youtube channel](https://www.youtube.com/c/swiftprogrammingtutorials)**
//: my courses on **[Udemy](https://www.udemy.com/user/karolynyisztor/)**, **[Lynda](https://www.lynda.com/Karoly-Nyisztor/9655357-1.html)** and **[Pluralsight](https://www.pluralsight.com/profile/author/karoly-nyisztor)**.
//: Website **[www.leakka.com](http://www.leakka.com)**
//: ---
import Foundation

func fizzBuzz(_ turns: Int) -> String {
    var strings = [String](repeating: "", count: turns)
    
    for index in 1...turns {
        if index % 15 == 0 {
            strings[index - 1] = "FizzBuzz"
        }
        else if index % 3 == 0 {
            strings[index - 1] = "Fizz"
        }
        else if index % 5 == 0 {
            strings[index - 1] = "Buzz"
        }
        else {
            strings[index - 1] = String(index)
        }
    }
    
    let result = strings.joined(separator: ", ")
    return result
}

//: Test
let turns = 15
let fb = fizzBuzz(turns)
print(fb)
