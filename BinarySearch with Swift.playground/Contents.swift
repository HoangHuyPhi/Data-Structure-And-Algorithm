import UIKit
let arrayNumbers = [1,2,3,4,5,6,7,10,15,17,18,20]
func binarySearch(arrayNumbers : [Int], key: Int) -> Bool {
    let minIndex = 0
    let maxIndex = arrayNumbers.count - 1
    let midIndex = maxIndex/2
    let midValue = arrayNumbers[midIndex]
    // Check if array is exist
    if arrayNumbers.count == 0 {
        return false
    }
    // Check if key is below minimumnumber and greater than maximum Number
    if key > arrayNumbers[maxIndex] || key < arrayNumbers[minIndex] {
        print("Number \(key) is not in the array")
        return false
    }
    // Check if key is greater than middle value, we gonna take the upper part of the array
    if key > midValue {
        let slice = Array(arrayNumbers[midIndex + 1...maxIndex])
        return binarySearch(arrayNumbers: slice, key: key)
    }
    // Check if key is greater than middle value, we gonna take the upper part of the array
    if key < midValue {
        let slice = Array(arrayNumbers[minIndex...midIndex - 1])
        return binarySearch(arrayNumbers: slice, key: key)
    }
     // Check if key is equal to the middle value, we gonna take the mid value
    if key == midValue {
        print(key)
        return true
    }
    return false
}
binarySearch(arrayNumbers: arrayNumbers, key: 6)
