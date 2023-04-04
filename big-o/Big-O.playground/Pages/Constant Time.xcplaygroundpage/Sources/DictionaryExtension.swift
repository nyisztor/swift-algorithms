import Foundation

// Generates dictionaries of given size in the form ["0": 0, "1": 1, ... "1000": 1000]
public extension Dictionary where Key == String, Value == Int {
    static func generate(size: Int) -> [String: Int] {
        var result = [String: Int]()
        guard size > 0 else {
            return result
        }
        
        let values = Array(0..<size)
        for i in values {
            let key = String(i)
            result[key] = i
        }
        return result
    }
}
