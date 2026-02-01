import Foundation

let n = Int(readLine()!)!
var oneRM = [Int]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{ Int(String($0))! }.reduce(0, +)
    if input >= 512 {
        oneRM.append(input)
    }
}

if oneRM.isEmpty {
    print(-1)
} else {
    oneRM.sort()
    print(oneRM.first!)
}
