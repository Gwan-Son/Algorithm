import Foundation

var cooks = [(Int, Int)]()

for i in 1...5 {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    cooks.append((i, input.reduce(0, +)))
}

cooks.sort(by: {$0.1 > $1.1 })
print(cooks.first!.0, cooks.first!.1)