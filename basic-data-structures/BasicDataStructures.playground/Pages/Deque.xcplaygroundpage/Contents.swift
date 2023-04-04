import Foundation

public struct Deque<Element> {
    private var storage: [Element] = []
    
    public init() {}
    
    public mutating func enqueueFront(_ element: Element) {
        storage.insert(element, at: 0)
    }
    
    public mutating func enqueueBack(_ element: Element) {
        storage.append(element)
    }
    
    public mutating func dequeueFront() -> Element? {
        storage.isEmpty ? nil : storage.removeFirst()
    }
    
    public mutating func dequeueBack() -> Element? {
        storage.isEmpty ? nil : storage.removeLast()
    }
    
    public var isEmpty: Bool {
        storage.isEmpty
    }
    
    public var peekFront: Element? {
        storage.first
    }
    
    public var peekBack: Element? {
        storage.last
    }
}

extension Deque: CustomStringConvertible {
    public var description: String {
        storage.description
    }
}

// Usage examples
var deque = Deque<Int>()

deque.enqueueFront(1)
deque.enqueueFront(2)
deque.enqueueBack(3)
deque.enqueueBack(4)

print(deque)

let emptyWarning = "Deque is empty"
print(deque.dequeueFront() ?? emptyWarning)
print(deque.dequeueBack() ?? emptyWarning)

print(deque)

print(deque.peekFront ?? emptyWarning)
print(deque.peekBack ?? emptyWarning)

print(deque)
