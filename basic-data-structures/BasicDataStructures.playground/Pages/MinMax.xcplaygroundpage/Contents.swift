// MinMax
import Foundation
/*
// Uses a custom struct to represent the result
struct MinMax {
    var min: Int
    var max: Int
}

func minMax(of numbers: [Int]) -> MinMax? {
    guard let min = numbers.min(), let max = numbers.max() else {
        return nil
    }
    return MinMax(min: min, max: max)
}

let numbers = [10, 5, 2, 7, 1, 9]
if let result = minMax(of: numbers) {
    print("\nInput: \(numbers) \n\tMinimum: \(result.min) \n\tMaximum: \(result.max)")
}*/

/*
// Uses an array to represent the result
func minMax(of numbers: [Int]) -> [Int]? {
    guard let min = numbers.min(), let max = numbers.max() else {
        return nil
    }
    return [min, max]
}

let numbers = [10, 5, 2, 7, 1, 9]
if let result = minMax(of: numbers) {
    print("\nInput: \(numbers) \n\tMinimum: \(result[0]) \n\tMaximum: \(result[1])")
}*/

func minMax(of numbers: [Int]) -> (min: Int, max: Int)? {
    guard let min = numbers.min(), let max = numbers.max() else {
        return nil
    }
    return (min, max)
}

let numbers = [10, 5, 2, 7, 1, 9]
if let result = minMax(of: numbers) {
    print("\nInput: \(numbers) \n\tMinimum: \(result.min) \n\tMaximum: \(result.max)")
}

