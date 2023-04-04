import Foundation

public struct Deque<Element> {
    private var storage: [Element] = []
    
    // Create an empty deque
    public init() {}
    
    // Insert an element at the front of the deque
    public mutating func enqueueFront(_ element: Element) {
        storage.insert(element, at: 0)
    }
    
    // Add an element to the end of the deque
    public mutating func enqueueBack(_ element: Element) {
        storage.append(element)
    }
            
    // Remove the element from the front of the deque and return it
    public mutating func dequeueFront() -> Element? {
        storage.isEmpty ? nil : storage.removeFirst()
    }

    // Remove the element from the end of the deque and return it
    public mutating func dequeueBack() -> Element? {
        storage.isEmpty ? nil : storage.removeLast()
    }
    
    // Check if the deque is empty
    public var isEmpty: Bool {
      storage.isEmpty
    }
    
    // Return the element at the front of the deque without removing it
    public var peekFront: Element? {
        storage.first
    }
    
    // Return the element at the back of the deque without removing it
    public var peekBack: Element? {
        storage.last
    }
}

extension Deque: CustomStringConvertible {
    public var description: String {
        storage.description
    }
}
