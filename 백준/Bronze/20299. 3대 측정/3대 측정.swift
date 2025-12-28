import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }

let n = input[0], k = input[1], l = input[2]

var result = [Int]()
var count = 0

for _ in 0..<n {
    let members = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let sum = members.reduce(0, +)
    if members.min()! >= l && sum >= k {
        count += 1
        members.forEach { result.append($0) }
    }
}

print(count)
result.forEach {
    print($0, terminator: " ")
}
