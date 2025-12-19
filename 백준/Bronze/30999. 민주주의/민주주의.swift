import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let n = input[0], m = input[1]
var result = 0

for _ in 0..<n {
    let count = readLine()!.map{ String($0) }.filter{ $0 == "O" }.count
    if count >= (m + 1) / 2 {
        result += 1
    }
}

print(result)
