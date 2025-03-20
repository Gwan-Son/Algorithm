import Foundation

let digit = [
    "111111",// 0
    "1010",// 1
    "1011101",// 2
    "1001111",// 3
    "1101010",// 4
    "1100111",// 5
    "1110111",// 6
    "1011",// 7
    "1111111",// 8
    "1101011" // 9
]

while let input = readLine() {
    if input == "BYE" { break }
    var arr = input.split(separator: "+").map{ String($0) }
    arr[1].removeLast()
    var sum = 0
    var stringInt = ""
    var temp = ""
    for i in arr[0] {
        temp += String(i)
        if temp.count == 3 {
            let bin = String(Int(temp)!, radix: 2)
            stringInt += String(digit.firstIndex(of: bin)!)
            temp = ""
        }
    }
    sum += Int(stringInt)!
    stringInt = ""
    for i in arr[1] {
        temp += String(i)
        if temp.count == 3 {
            let bin = String(Int(temp)!, radix: 2)
            stringInt += String(digit.firstIndex(of: bin)!)
            temp = ""
        }
    }
    sum += Int(stringInt)!
    stringInt = ""
    
    for i in String(sum) {
        var tempString = String(Int(digit[Int(String(i))!], radix: 2)!)
        while tempString.count != 3 {
            tempString.insert("0", at: tempString.startIndex)
        }
        stringInt += tempString
    }
    print("\(arr[0])+\(arr[1])=\(stringInt)")
}