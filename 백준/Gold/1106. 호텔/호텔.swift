import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let c = input[0], n = input[1]
var cities: [(cost: Int, people: Int)] = []
var dp = [Int](repeating: Int.max, count: 1101)
dp[0] = 0

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
    cities.append((cost: input[0], people: input[1]))
}

for city in cities {
    let cost = city.cost
    let people = city.people

    for i in (people..<dp.count) {
        if dp[i - people] != Int.max {
            dp[i] = min(dp[i], dp[i - people] + cost)
        }
    }
}

var answer = Int.max
for i in (c..<dp.count) {
    answer = min(answer, dp[i])
}

print(answer)