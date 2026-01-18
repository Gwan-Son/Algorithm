import Foundation

let n = Int(readLine()!)!

let input = readLine()!.map{ String($0) }
let symbols = [".", "|", ":", "#"]

var result = 0
var temp = ""

for i in 0..<n {
    if symbols.contains(input[i]) {
        result += Int(temp)!
        temp = ""
    } else {
        temp += input[i]
    }
}

if temp != "" {
    result += Int(temp)!
}

print(result)
