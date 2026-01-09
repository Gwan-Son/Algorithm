import Foundation

let n = Int(readLine()!)!

var t = [Int]()
var b = [Int]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
    t.append(input[0])
    b.append(input[1])
}

print(t.max()! * b.min()! % 7 + 1)
