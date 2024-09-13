import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]

var passwordDict: [String: String] = [:]
for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map { String($0) }
    passwordDict[input[0]] = input[1]
}

for _ in 0..<M {
    let input = readLine()!
    print(passwordDict[input] ?? "fail")
}