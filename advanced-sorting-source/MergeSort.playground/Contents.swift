/*:
 # Introduction to Algorithms in Swift
 ## Source Code
 
 I’m offering lifetime access to the course for 75% off.
 Be sure to take advantage of this discount while it lasts!
 
 [**Here is where you can get your 75% off discount**](https://www.udemy.com/introduction-to-algorithms-in-swift/?couponCode=BESTPRICE)
 _ _ _
 */
//: Merge Sort
import Foundation

func mergeSort(_ input: [Int]) -> [Int] {
    guard input.count > 1 else {
        return input
    }
    
    let splitIndex = input.count / 2
    let leftArray = mergeSort(Array(input[0..<splitIndex]))
    let rightArray = mergeSort(Array(input[splitIndex..<input.count]))
    
    return merge(leftPart: leftArray, rightPart: rightArray)
}

func merge(leftPart: [Int], rightPart: [Int]) -> [Int] {
    var sorted = [Int]()
    
    var leftIndex = 0
    var rightIndex = 0
    
    while leftIndex < leftPart.count && rightIndex < rightPart.count {
        if leftPart[leftIndex] < rightPart[rightIndex] {
            sorted.append(leftPart[leftIndex])
            leftIndex += 1
        } else if leftPart[leftIndex] > rightPart[rightIndex] {
            sorted.append(rightPart[rightIndex])
            rightIndex += 1
        } else {
            sorted.append(leftPart[leftIndex])
            leftIndex += 1
            sorted.append(rightPart[rightIndex])
            rightIndex += 1
        }
    }
    
    if leftIndex < leftPart.count {
        sorted.append(contentsOf: leftPart[leftIndex..<leftPart.count])
    } else if rightIndex < rightPart.count {
        sorted.append(contentsOf: rightPart[rightIndex..<rightPart.count])
    }
    
    return sorted
}
//: Test
let unsorted = [0, 9, 6, 2, 3, 2, 1, 3]
print("Unsorted \(unsorted)")
let sorted = mergeSort(unsorted)

print("Sorted with merge sort \(sorted)")
