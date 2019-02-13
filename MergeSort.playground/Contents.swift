import UIKit

// Split Arrays
func splitArrays(array: [Int]) -> [Int] {
    guard array.count > 1 else {
        return array
    }
    let leftArray = Array(array[0..<array.count/2])
    let rightArray = Array(array[array.count/2...array.count - 1])
    return MergeArrays(leftArray: splitArrays(array: leftArray), rightArray: splitArrays(array: rightArray))
}

// Merge Arrays
func MergeArrays(leftArray: [Int], rightArray: [Int]) -> [Int] {
    var leftArray = leftArray
    var rightArray = rightArray
    var mergedArray : [Int] = []
    while leftArray.count > 0 && rightArray.count > 0 {
        if leftArray.first! < rightArray.first! {
            mergedArray.append(leftArray.removeFirst())
        } else {
            mergedArray.append(rightArray.removeFirst())
        }
    }
    return mergedArray + leftArray + rightArray
}
var numbers = [4,9,2,3,5,7,10,15,0,6,1,4,17,14]
splitArrays(array: numbers)

