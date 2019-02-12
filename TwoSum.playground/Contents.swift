import UIKit

// TWO-SUM PROBLEM
let numbers = [1,3,6,7,7,12,14]

// Brute-Force
func bruteForce(array: [Int], sum: Int) -> Bool {
    for i in 0..<array.count {
        for y in 0..<array.count where y != i{
            if array[i] + array[y] == sum {
                print("\(array[i]) + \(array[y]) == \(sum)")
                return true
            }
        }
    }
    print("No values")
    return false
}
//bruteForce(array: numbers, sum: 1)

// Binary Search
func twoSumByBinarySearch(array: [Int], sum: Int) -> Bool {
    for i in 0..<array.count {
        let compliment = sum - array[i]
        var tempArray = array
        tempArray.remove(at: i)
        let hasCompliment = BinarySearch(array: tempArray, key: compliment)
        print("\(hasCompliment)")
        if hasCompliment {
            print("\(array[i]) + \(compliment)")
            return true
        }
    }
    return false
}



// sum 6 -> compliment =  5
func BinarySearch(array: [Int], key: Int) -> Bool {
    let startIndex = 0
    let lastIndex = array.count - 1
    let midIndex = lastIndex/2
    let midValue = array[midIndex]
    if array.count == 0 {
        return false
    }
    if midValue == key {
        return true
    }
    else if key < array[startIndex] || key > array[lastIndex] {
        return false
    }
    else if midValue > key {
        let slice = Array(array[startIndex...midIndex - 1])
        return BinarySearch(array: slice, key: key)
    }
    else if midValue < key {
        let slice = Array(array[midIndex + 1...lastIndex])
        return BinarySearch(array: slice, key: key)
    }
    return false
}
//twoSumByBinarySearch(array: numbers, sum: 26)
// Two-Sum Pointers
func twoSumPointers(array: [Int], sum: Int) -> Bool {
    var startIndex = 0
    var lastIndex = array.count - 1
    while startIndex < lastIndex {
        if sum > array[startIndex] + array[lastIndex] {
            startIndex += 1
        }
        else if sum < array[startIndex] + array[lastIndex] {
            lastIndex -= 1
        }
        else if sum == array[startIndex] + array[lastIndex] {
             print("\(array[startIndex]) and \(array[lastIndex])")
            return true
        }
    }
    print("no values")
    return false
}
twoSumPointers(array: numbers, sum: 50)
