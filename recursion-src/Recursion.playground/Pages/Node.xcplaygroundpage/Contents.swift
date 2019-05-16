//: **Introduction to Algorithms and Data Structures in Swift 5** - Source Code
//:
//: Get the course **[on Udemy using this discounted coupon](https://www.udemy.com/introduction-to-algorithms-in-swift/?couponCode=BESTPRICE)**
//:
//: The book version is available **[on iTunes](http://itunes.apple.com/us/book/id1345964250)** and **[Amazon](https://www.amazon.com/Introduction-Algorithms-Data-Structures-Swift-ebook/dp/B077D8MQ31)**
//:
//: _ _ _
//: ## Recursive Data Structures
//: Recursive Node class
//:
//: - Callout(Interested in Swift programming?):
//: Check out my **[Youtube channel](https://www.youtube.com/c/swiftprogrammingtutorials)**
//: my courses on **[Udemy](https://www.udemy.com/user/karolynyisztor/)**, **[Lynda](https://www.lynda.com/Karoly-Nyisztor/9655357-1.html)** and **[Pluralsight](https://www.pluralsight.com/profile/author/karoly-nyisztor)**.
//: Website **[www.leakka.com](http://www.leakka.com)**
//: ---

// A simple Node class. Each Node can link to the next node through the next property.
class Node {
    var next: Node?
    var value: String
    
    init(value: String) {
        self.value = value
    }
}


// Now that we have our Node type, let's build a linked list.
let node1 = Node(value: "node1")
let node2 = Node(value: "node2")
node1.next = node2
let node3 = Node(value: "node3")
node2.next = node3
node3.next = nil

// Traverses the linked list and prints the value in each node.
func parseNodes(from node: Node?) {
    guard let validNode = node else {
        return
    }
    print(validNode.value)
    parseNodes(from: validNode.next)
}

parseNodes(from: node1)
