import Foundation

let input = readLine()!

var numbers: [Int] = []
var operators: [String] = []
var temp = ""
for i in input {
    if i == "+" || i == "-" {
        operators.append(String(i))
        numbers.append(Int(temp)!)
        temp = ""
    } else {
        temp += String(i)
    }
}
numbers.append(Int(temp)!)


var isMinus: Bool = false
var sum1 = numbers[0]
var sum2 = 0

for i in 1..<numbers.count {
    if isMinus {
        sum2 += numbers[i]
    } else if operators[i - 1] == "-" {
        isMinus = true
        sum2 += numbers[i]
    } else {
        sum1 += numbers[i]
    }
}

print(sum1 - sum2)
