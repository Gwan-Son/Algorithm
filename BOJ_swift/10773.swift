import Foundation

let k = Int(readLine()!)!

var money: [Int] = []

for _ in 0..<k {
    let temp = Int(readLine()!)!
    if temp == 0 {
        money.removeLast()
    } else {
        money.append(temp)
    }
}

print(money.reduce(0){ $0 + $1 })
