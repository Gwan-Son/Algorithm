import Foundation

let n = Int(readLine()!)!

var arr = readLine()!.split(separator: " ").map{ Int(String($0))! }.sorted()

var dict = [Int: Int]()

for a in arr {
    dict[a, default: 0] += 1
}

print(dict.values.max()!)
