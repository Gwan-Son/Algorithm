import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let n = input[0], l = input[1], h = input[2]

var scores: [Double] = readLine()!.split(separator: " ").map{ Double(String($0))! }

scores.sort()

for _ in 0..<l {
    scores.removeFirst()
}

for _ in 0..<h {
    scores.removeLast()
}

print(scores.reduce(0.0, +) / Double(scores.count))