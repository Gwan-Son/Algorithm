import Foundation

var n = Int(readLine()!)!
let str = readLine()!.map{ String($0) }

let numbers = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
let symbols = ["!", "@", "#", "$", "%", "^", "&", "*", "(", ")", "-", "+"]

var result = 0
var isExist = [Bool](repeating: false, count: 4)

for i in 0..<n {
    if (65...90).contains(Character(str[i]).asciiValue ?? 0) && !isExist[0] {
        isExist[0] = true
    }
    
    if (97...122).contains(Character(str[i]).asciiValue ?? 0) && !isExist[1] {
        isExist[1] = true
    }
    
    if numbers.contains(str[i]) && !isExist[2] {
        isExist[2] = true
    }
    
    if symbols.contains(str[i]) && !isExist[3] {
        isExist[3] = true
    }
}

if n < 6 {
    let temp = max(6 - n, isExist.filter{ $0 == false }.count)
    result += temp
} else {
    result += isExist.filter{ $0 == false }.count
}

print(result)
