import Foundation

let n = Int(readLine()!)!

var menu = [Int]()

for _ in 0..<n {
    menu.append(Int(readLine()!)!)
}

let m = Int(readLine()!)!
var result = 0

for _ in 0..<m {
    let target = Int(readLine()!)!

    result += menu[target - 1]
}

print(result)
