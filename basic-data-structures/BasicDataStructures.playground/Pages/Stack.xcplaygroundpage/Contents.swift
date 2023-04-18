public struct Stack<Element> {
    private var storage: [Element] = []
    
    public init() {}

    public mutating func push(_ element: Element) {
        storage.append(element)
    }

    public mutating func pop() -> Element? {
        storage.isEmpty ? nil : storage.removeLast()
    }
    
    public var peek: Element? {
        storage.last
    }
    
    public var isEmpty: Bool {
        storage.isEmpty
    }
}

// Usage examples
var intStack = Stack<Int>()

intStack.push(5)
intStack.push(10)


let emptyMessage = "Stack is empty"
print(intStack.peek ?? emptyMessage)
print(intStack.pop() ?? emptyMessage)
print(intStack.pop() ?? emptyMessage)
print(intStack.isEmpty)
