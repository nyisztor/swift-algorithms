import Foundation

public struct Queue<Element> {
    private var storage: [Element] = []
    
    // Create an empty queue
    public init() {}
    
    // Add an element to the end of the queue
    public mutating func enqueue(_ element: Element) {
        storage.append(element)
    }
    
    // Remove the element from the front of the queue and return it
    public mutating func dequeue() -> Element? {
        storage.isEmpty ? nil : storage.removeFirst()
    }

    // Return the element at the front of the queue without removing it
    public var peek: Element? {
        storage.first
    }
    
    // Check if the queue is empty
    public var isEmpty: Bool {
      storage.isEmpty
    }
}

// Usage example
var queue = Queue<Int>()
queue.enqueue(10)
queue.enqueue(20)
queue.enqueue(30)

print(queue.peek ?? "Queue is empty")

while let element = queue.dequeue() {
  print(element)
}

