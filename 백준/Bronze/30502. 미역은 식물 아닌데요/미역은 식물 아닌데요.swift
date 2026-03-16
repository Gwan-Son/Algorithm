import Foundation

let nm = readLine()!.split(separator: " ").map{ Int(String($0))! }
let n = nm[0], m = nm[1]

var creature = [(Int, Int)](repeating: (-1, -1), count: n)

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map{ String($0) }
    let number = Int(input[0])!
    if input[1] == "P" {
        creature[number - 1].0 = Int(input[2])!
    } else {
        creature[number - 1].1 = Int(input[2])!
    }
}

var impossible = 0
var possible = 0

for i in 0..<n {
    if creature[i].0 == 0 || creature[i].1 == 1 {
        impossible += 1
    }
    if creature[i].0 == 1 && creature[i].1 == 0 {
        possible += 1
    }
}

print("\(possible) \(n - impossible)")
