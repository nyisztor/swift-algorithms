import Foundation

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
