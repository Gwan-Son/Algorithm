import Foundation

let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{ Int64(String($0))! }
    print(input.reduce(0, +))
}