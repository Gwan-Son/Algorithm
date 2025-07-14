import Foundation

var input = readLine()!.map{ String($0) }
let n = Int(readLine()!)!

for _ in 0..<n {
    let change = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let a = change[0], b = change[1]
    let temp = input[a]
    input[a] = input[b]
    input[b] = temp
}

print(input.joined())