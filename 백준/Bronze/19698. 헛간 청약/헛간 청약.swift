import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let n = input[0], w = input[1], h = input[2], l = input[3]

let maxCount = (w / l) * (h / l)

if maxCount > n {
    print(n)
} else {
    print(maxCount)
}