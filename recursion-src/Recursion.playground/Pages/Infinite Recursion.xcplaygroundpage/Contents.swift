//: **Introduction to Algorithms and Data Structures in Swift 5** - Source Code
//:
//: Get the course **[on Udemy using this discounted coupon](https://www.udemy.com/introduction-to-algorithms-in-swift/?couponCode=BESTPRICE)**
//:
//: The book version is available **[on iTunes](http://itunes.apple.com/us/book/id1345964250)** and **[Amazon](https://www.amazon.com/Introduction-Algorithms-Data-Structures-Swift-ebook/dp/B077D8MQ31)**
//:
//: _ _ _
//: ## Recursive Functions
//: Infinite recursion example
//:
//: - Callout(Interested in Swift programming?):
//: Check out my **[Youtube channel](https://www.youtube.com/c/swiftprogrammingtutorials)**
//: my courses on **[Udemy](https://www.udemy.com/user/karolynyisztor/)**, **[Lynda](https://www.lynda.com/Karoly-Nyisztor/9655357-1.html)** and **[Pluralsight](https://www.pluralsight.com/profile/author/karoly-nyisztor)**.
//: Website **[www.leakka.com](http://www.leakka.com)**
//: ---
/*
 I implement a function which calculates the sum of the first n positive integers.
 I call the function badSum, to make it clear that it's not the right approach to solve this problem. I'll show you the right solution that relies on a simple formula in an upcoming lesson.
 */
//: - Callout(Infinite Loop!):
//: Just for demonstration purposes, *don't* use it in real code!
func badSum(n: Int) -> Int {
    if n <= 0 {
        return 0
    }
    guard n > 0 else {
        return 0
    }

    //print(n)
    return n + badSum(n: (n - 1))
}

let res = badSum(n: 3)
print(res)
