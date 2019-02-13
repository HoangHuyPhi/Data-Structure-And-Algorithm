//Find the most common value
var numbers = [3,3,3,3,2,2,2,6,6,6,6,6,6]
func mostCommonNumber(array: [Int]) -> [Int] {
    var dictionary: [Int : Int] = [:]
    var topNumber: [Int] = []
    for number in array {
        if let count = dictionary[number] {
            dictionary[number] = count + 1
        } else {
            dictionary[number] = 1
        }
    }
    let highestValue = dictionary.values.max()
    for (number, count) in dictionary {
        if dictionary[number] == highestValue {
          topNumber.append(number)
        }
    }
return topNumber
}
mostCommonNumber(array: numbers)
