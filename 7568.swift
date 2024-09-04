import Foundation

let N = Int(readLine()!)!

var person: [[Int]] = []
var ranking: [Int] = []

for _ in 0..<N {
    person.append(readLine()!.split(separator: " ").map{ Int($0)! })
}

for i in person {
    let (weight, height) = (i[0], i[1])
    let biggerCount = person.filter { $0[0] > weight && $0[1] > height}.count
    ranking.append(biggerCount + 1)
}

print(ranking.map{ String($0) }.joined(separator: " "))
