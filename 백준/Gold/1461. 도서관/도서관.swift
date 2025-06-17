import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let n = input[0], m = input[1]

let arr = readLine()!.split(separator: " ").map{ Int(String($0))! }

let positive = arr.filter{ $0 > 0 }.sorted(by: >)
let negative = arr.filter{ $0 < 0 }.map{ abs($0) }.sorted(by: >)

var totalDistance = 0
var maxDistance = 0

for i in stride(from: 0, to: positive.count, by: m) {
    let groupMax = positive[i]
    totalDistance += groupMax * 2
    maxDistance = max(maxDistance, groupMax)
}

for i in stride(from: 0, to: negative.count, by: m) {
    let groupMax = negative[i]
    totalDistance += groupMax * 2
    maxDistance = max(maxDistance, groupMax)
}

totalDistance -= maxDistance

print(totalDistance)