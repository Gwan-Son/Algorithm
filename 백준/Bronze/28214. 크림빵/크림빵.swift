import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let n = input[0], k = input[1], p = input[2]

let arr = readLine()!.split(separator: " ").map{ Int(String($0))! }

var result = 0
var count = 0
var isNotCreamed = 0

for i in 0..<arr.count {
    if arr[i] == 0 { isNotCreamed += 1 }
    count += 1
    if count == k {
        if isNotCreamed < p {
            result += 1
        }
        count = 0
        isNotCreamed = 0
    }
}

print(result)
